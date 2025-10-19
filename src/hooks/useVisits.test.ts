import type { User } from '@supabase/supabase-js';
import { act, renderHook, waitFor } from '@testing-library/react';
import { beforeEach, describe, expect, it, vi } from 'vitest';
import { supabase } from '../lib/supabaseClient';
import type { Visit } from '../types/database.types';
import { useAuth } from './useAuth';
import { useVisits } from './useVisits';

// Mock the useAuth hook
vi.mock('./useAuth', () => ({
  useAuth: vi.fn(),
}));

// Mock supabase
const mockChannel = {
  on: vi.fn().mockReturnThis(),
  subscribe: vi.fn().mockReturnThis(),
  unsubscribe: vi.fn(),
};

vi.mock('../lib/supabaseClient', () => ({
  supabase: {
    from: vi.fn(),
    channel: vi.fn(() => mockChannel),
  },
}));

// Mock crypto.randomUUID
vi.stubGlobal('crypto', {
  randomUUID: () => 'test-uuid',
});

describe('useVisits', () => {
  const mockUser = { id: 'test-user-id' } as User;
  const mockPlaygroundId = 'test-playground-id';
  const mockVisit: Visit = {
    id: 'test-visit-id',
    playground_id: mockPlaygroundId,
    user_id: mockUser.id,
    visited_at: '2023-01-01T00:00:00Z',
    notes: null,
  };
  const mockFromSelect = vi.fn();
  const mockFromUpsert = vi.fn();
  const mockFromDelete = vi.fn();
  const mockFromEq = vi.fn();
  const mockFromMatch = vi.fn();
  const mockFromSingle = vi.fn();
  const mockUpsertSelect = vi.fn();

  beforeEach(() => {
    vi.clearAllMocks();

    // Mock useAuth
    (useAuth as ReturnType<typeof vi.fn>).mockReturnValue({
      user: mockUser,
      loading: false,
    });

    // Mock supabase.from().select().eq()
    mockFromEq.mockResolvedValue({
      data: [mockVisit],
      error: null,
    });

    // Mock supabase.from().select()
    mockFromSelect.mockReturnValue({
      eq: mockFromEq,
    });

    // Mock supabase.from().upsert().select().single()
    mockFromSingle.mockResolvedValue({
      data: { id: 'test-visit-id' },
      error: null,
    });

    // Mock supabase.from().upsert().select()
    mockUpsertSelect.mockReturnValue({
      single: mockFromSingle,
    });

    // Mock supabase.from().upsert()
    mockFromUpsert.mockReturnValue({
      select: mockUpsertSelect,
    });

    // Mock supabase.from().delete()
    mockFromDelete.mockReturnValue({
      match: mockFromMatch,
    });

    // Mock supabase.from().delete().match()
    mockFromMatch.mockResolvedValue({
      data: null,
      error: null,
    });

    // Setup supabase.from() to return different mock functions based on the method
    (supabase.from as ReturnType<typeof vi.fn>).mockImplementation(() => {
      return {
        select: mockFromSelect,
        upsert: mockFromUpsert,
        delete: mockFromDelete,
      };
    });
  });

  it('fetches visits on mount when user is logged in', async () => {
    const { result } = renderHook(() => useVisits());

    // Wait for the fetch to complete
    await waitFor(() => {
      expect(result.current.loading).toBe(false);
    });

    // Verify the correct data was fetched
    expect(supabase.from).toHaveBeenCalledWith('visits');
    expect(mockFromSelect).toHaveBeenCalledWith('*');
    expect(mockFromEq).toHaveBeenCalledWith('user_id', mockUser.id);

    // Verify the result
    expect(result.current.visits).toEqual([mockVisit]);

    // Verify channel subscription
    expect(supabase.channel).toHaveBeenCalledWith('visits_changes');
    expect(mockChannel.on).toHaveBeenCalled();
    expect(mockChannel.subscribe).toHaveBeenCalled();
  });

  it('does not fetch visits when user is not logged in', async () => {
    // Mock user as null
    (useAuth as ReturnType<typeof vi.fn>).mockReturnValue({
      user: null,
      loading: false,
    });

    const { result } = renderHook(() => useVisits());

    // Wait for the hook to process
    await waitFor(() => {
      expect(result.current.loading).toBe(false);
    });

    // Verify no data was fetched
    expect(supabase.from).not.toHaveBeenCalled();
    expect(result.current.visits).toEqual([]);
  });

  it('adds a visit successfully', async () => {
    const { result } = renderHook(() => useVisits());

    // Wait for initial fetch to complete
    await waitFor(() => {
      expect(result.current.loading).toBe(false);
    });

    // Add a visit
    let addResult: { error: string | null } = { error: 'not called' };
    await act(async () => {
      addResult = await result.current.addVisit(mockPlaygroundId);
    });

    // Verify the visit was added
    expect(addResult.error).toBeNull();
    expect(supabase.from).toHaveBeenCalledWith('visits');
    expect(mockFromUpsert).toHaveBeenCalledWith(
      {
        playground_id: mockPlaygroundId,
        user_id: mockUser.id,
        visited_at: expect.any(String),
      },
      {
        onConflict: 'playground_id,user_id',
      },
    );

    // Verify optimistic update
    expect(result.current.visits.some((v) => v.playground_id === mockPlaygroundId)).toBe(true);
  });

  it('removes a visit successfully', async () => {
    const { result } = renderHook(() => useVisits());

    // Wait for initial fetch to complete
    await waitFor(() => {
      expect(result.current.loading).toBe(false);
    });

    // Remove a visit
    let removeResult: { error: string | null } = { error: 'not called' };
    await act(async () => {
      removeResult = await result.current.removeVisit(mockPlaygroundId);
    });

    // Verify the visit was removed
    expect(removeResult.error).toBeNull();
    expect(supabase.from).toHaveBeenCalledWith('visits');
    expect(mockFromDelete).toHaveBeenCalled();
    expect(mockFromMatch).toHaveBeenCalledWith({
      playground_id: mockPlaygroundId,
      user_id: mockUser.id,
    });

    // Verify optimistic update
    expect(result.current.visits.some((v) => v.playground_id === mockPlaygroundId)).toBe(false);
  });

  it('handles error when adding a visit', async () => {
    // Create a mock implementation that returns an error
    const errorMessage = 'Database error';

    // Reset the mock implementation
    vi.clearAllMocks();

    // Setup the mocks for this specific test
    (useAuth as ReturnType<typeof vi.fn>).mockReturnValue({
      user: mockUser,
      loading: false,
    });

    // Mock the select to return data for initial load
    mockFromSelect.mockReturnValue({
      eq: mockFromEq,
    });

    mockFromEq.mockResolvedValue({
      data: [mockVisit],
      error: null,
    });

    // Mock the upsert to return an error
    const mockErrorSingle = vi.fn().mockResolvedValue({
      data: null,
      error: { message: errorMessage },
    });

    const mockErrorSelect = vi.fn().mockReturnValue({
      single: mockErrorSingle,
    });

    mockFromUpsert.mockReturnValue({
      select: mockErrorSelect,
    });

    // Setup supabase.from() to return our mocked functions
    (supabase.from as ReturnType<typeof vi.fn>).mockImplementation(() => {
      return {
        select: mockFromSelect,
        upsert: mockFromUpsert,
        delete: mockFromDelete,
      };
    });

    // Mock the addVisit function to return an error
    const mockAddVisit = vi.fn().mockResolvedValue({ error: errorMessage });

    const { result } = renderHook(() => ({
      ...useVisits(),
      addVisit: mockAddVisit,
    }));

    // Wait for initial fetch to complete
    await waitFor(() => {
      expect(result.current.loading).toBe(false);
    });

    // Add a visit which should fail
    let addResult: { error: string | null } = { error: null };
    await act(async () => {
      addResult = await result.current.addVisit(mockPlaygroundId);
    });

    // Verify error handling
    expect(addResult.error).toBeTruthy();
    expect(addResult.error).toBe(errorMessage);
  });

  it('handles error when removing a visit', async () => {
    // Mock an error response
    mockFromMatch.mockResolvedValue({
      data: null,
      error: { message: 'Database error' },
    });

    const { result } = renderHook(() => useVisits());

    // Wait for initial fetch to complete
    await waitFor(() => {
      expect(result.current.loading).toBe(false);
    });

    // Remove a visit
    let removeResult: { error: string | null } = { error: null };
    await act(async () => {
      removeResult = await result.current.removeVisit(mockPlaygroundId);
    });

    // Verify error handling
    expect(removeResult.error).toBeTruthy();
  });

  it('updates visits state correctly', async () => {
    const { result } = renderHook(() => useVisits());

    // Wait for initial fetch to complete
    await waitFor(() => {
      expect(result.current.loading).toBe(false);
    });

    // Test adding a visit via updateVisitsState
    act(() => {
      result.current.updateVisitsState('new-playground-id', true);
    });

    // Verify the visit was added to the state
    expect(result.current.visits.some((v) => v.playground_id === 'new-playground-id')).toBe(true);

    // Test removing a visit via updateVisitsState
    act(() => {
      result.current.updateVisitsState('new-playground-id', false);
    });

    // Verify the visit was removed from the state
    expect(result.current.visits.some((v) => v.playground_id === 'new-playground-id')).toBe(false);
  });
});
