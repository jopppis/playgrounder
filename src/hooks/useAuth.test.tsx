import { Session, User } from '@supabase/supabase-js';
import { renderHook, waitFor } from '@testing-library/react';
import { act } from 'react';
import { afterEach, beforeEach, describe, expect, it, vi } from 'vitest';
import { supabase } from '../lib/supabaseClient';
import { useAuth } from './useAuth';

// Mock the Supabase client
vi.mock('../lib/supabaseClient', () => ({
  supabase: {
    auth: {
      getSession: vi.fn(),
      onAuthStateChange: vi.fn(),
    },
  },
}));

describe('useAuth', () => {
  const mockUser: User = {
    id: 'user-123',
    email: 'test@example.com',
    app_metadata: {},
    user_metadata: {},
    aud: 'authenticated',
    created_at: '',
  } as User;

  const mockSession: Session = {
    user: mockUser,
    access_token: 'mock-access-token',
    refresh_token: 'mock-refresh-token',
    expires_in: 3600,
    token_type: 'bearer',
  };

  const mockSubscription = {
    unsubscribe: vi.fn(),
    id: 'subscription-id',
    callback: vi.fn(),
  };

  beforeEach(() => {
    // Reset mocks
    vi.resetAllMocks();

    // Setup default mock implementations
    vi.mocked(supabase.auth.getSession).mockResolvedValue({
      data: { session: null },
      error: null,
    });

    vi.mocked(supabase.auth.onAuthStateChange).mockReturnValue({
      data: { subscription: mockSubscription },
    });
  });

  afterEach(() => {
    vi.resetAllMocks();
  });

  it('initializes with loading state and null user', async () => {
    const { result } = renderHook(() => useAuth());

    // Initially should be loading with no user
    expect(result.current.loading).toBe(true);
    expect(result.current.user).toBe(null);

    // After the initial session check, loading should be false
    await waitFor(() => {
      expect(result.current.loading).toBe(false);
    });

    expect(supabase.auth.getSession).toHaveBeenCalledTimes(1);
  });

  it('sets user when session exists', async () => {
    // Mock a session with a user
    vi.mocked(supabase.auth.getSession).mockResolvedValue({
      data: { session: mockSession },
      error: null,
    });

    const { result } = renderHook(() => useAuth());

    await waitFor(() => {
      expect(result.current.loading).toBe(false);
    });

    expect(result.current.user).toEqual(mockUser);
  });

  it('updates user on auth state change', async () => {
    // Start with no user
    const { result } = renderHook(() => useAuth());

    await waitFor(() => {
      expect(result.current.loading).toBe(false);
    });

    // Simulate auth state change
    const authStateChangeCallback = vi.mocked(supabase.auth.onAuthStateChange).mock.calls[0][0];
    if (typeof authStateChangeCallback === 'function') {
      act(() => {
        authStateChangeCallback('SIGNED_IN', mockSession);
      });
    }

    // User should be updated
    await waitFor(() => {
      expect(result.current.user).toEqual(mockUser);
    });
  });

  it('unsubscribes from auth changes on unmount', async () => {
    const { unmount } = renderHook(() => useAuth());

    await waitFor(() => {
      expect(supabase.auth.onAuthStateChange).toHaveBeenCalled();
    });

    unmount();

    expect(mockSubscription.unsubscribe).toHaveBeenCalledTimes(1);
  });
});
