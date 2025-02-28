import type { User } from '@supabase/supabase-js'
import { act, renderHook, waitFor } from '@testing-library/react'
import { beforeEach, describe, expect, it, vi } from 'vitest'
import { supabase } from '../lib/supabaseClient'
import { useAuth } from './useAuth'
import { useRatings } from './useRatings'

// Mock the useAuth hook
vi.mock('./useAuth', () => ({
  useAuth: vi.fn()
}))

// Mock supabase
vi.mock('../lib/supabaseClient', () => ({
  supabase: {
    from: vi.fn(),
    channel: vi.fn(() => ({
      on: vi.fn(() => ({
        subscribe: vi.fn()
      })),
      unsubscribe: vi.fn()
    }))
  }
}))

describe('useRatings', () => {
  const mockPlaygroundId = 'test-playground-id'
  const mockUser = { id: 'test-user-id' } as User
  const mockFromSelect = vi.fn()
  const mockFromUpsert = vi.fn()
  const mockFromUpdate = vi.fn()
  const mockFromEq = vi.fn()
  const mockFromMaybeSingle = vi.fn()
  const mockFromSingle = vi.fn()
  const mockFromOnConflict = vi.fn()

  beforeEach(() => {
    vi.clearAllMocks()

    // Mock useAuth
    ;(useAuth as ReturnType<typeof vi.fn>).mockReturnValue({
      user: mockUser,
      loading: false
    })

    // Mock supabase.from().select()
    mockFromSelect.mockReturnValue({
      eq: mockFromEq
    })

    // Mock supabase.from().select().eq()
    mockFromEq.mockReturnValue({
      eq: mockFromEq,
      maybeSingle: mockFromMaybeSingle,
      single: mockFromSingle
    })

    // Mock supabase.from().select().eq().maybeSingle()
    mockFromMaybeSingle.mockResolvedValue({
      data: { rating: 4, is_public: true },
      error: null
    })

    // Mock supabase.from().select().eq().single()
    mockFromSingle.mockResolvedValue({
      data: { avg_rating: 4.5, total_ratings: 10 },
      error: null
    })

    // Mock supabase.from().upsert()
    mockFromUpsert.mockReturnValue({
      onConflict: mockFromOnConflict
    })

    // Mock supabase.from().upsert().onConflict()
    mockFromOnConflict.mockResolvedValue({
      data: null,
      error: null
    })

    // Mock supabase.from().update()
    mockFromUpdate.mockReturnValue({
      eq: mockFromEq
    })

    // Setup supabase.from() to return different mock functions based on the table
    ;(supabase.from as ReturnType<typeof vi.fn>).mockImplementation((table) => {
      if (table === 'ratings') {
        return {
          select: mockFromSelect,
          upsert: mockFromUpsert,
          update: mockFromUpdate
        }
      } else if (table === 'playground_ratings') {
        return {
          select: mockFromSelect
        }
      }
      return {
        select: vi.fn()
      }
    })
  })

  it('fetches ratings on mount', async () => {
    const { result } = renderHook(() => useRatings(mockPlaygroundId))

    // Initial state
    expect(result.current.loading).toBe(true)

    // Wait for the fetch to complete
    await waitFor(() => {
      expect(result.current.loading).toBe(false)
    })

    // Verify the correct data was fetched
    expect(supabase.from).toHaveBeenCalledWith('ratings')
    expect(supabase.from).toHaveBeenCalledWith('playground_ratings')
    expect(mockFromSelect).toHaveBeenCalledWith('rating, is_public')
    expect(mockFromSelect).toHaveBeenCalledWith('avg_rating, total_ratings')
    expect(mockFromEq).toHaveBeenCalledWith('playground_id', mockPlaygroundId)
    expect(mockFromEq).toHaveBeenCalledWith('user_id', mockUser.id)

    // Verify the result
    expect(result.current.rating).toEqual({
      avgRating: 4.5,
      totalRatings: 10,
      userRating: 4,
      isPublic: true
    })
  })

  it('handles errors when fetching ratings', async () => {
    // Mock an error response
    mockFromSingle.mockResolvedValue({
      data: null,
      error: new Error('Database error')
    })

    const { result } = renderHook(() => useRatings(mockPlaygroundId))

    // Wait for the fetch to complete
    await waitFor(() => {
      expect(result.current.loading).toBe(false)
    })

    // Verify error state
    expect(result.current.error).toBeTruthy()
  })

  it('submits a rating successfully', async () => {
    const { result } = renderHook(() => useRatings(mockPlaygroundId))

    // Wait for initial fetch to complete
    await waitFor(() => {
      expect(result.current.loading).toBe(false)
    })

    // Submit a rating
    await act(async () => {
      await result.current.submitRating(5, true, 'test-visit-id')
    })

    // Verify the rating was submitted
    expect(supabase.from).toHaveBeenCalledWith('ratings')
    expect(mockFromUpsert).toHaveBeenCalledWith({
      playground_id: mockPlaygroundId,
      user_id: mockUser.id,
      rating: 5,
      is_public: true,
      visit_id: 'test-visit-id'
    }, {
      onConflict: 'visit_id'
    })
  })

  it('toggles rating visibility', async () => {
    const { result } = renderHook(() => useRatings(mockPlaygroundId))

    // Wait for initial fetch to complete
    await waitFor(() => {
      expect(result.current.loading).toBe(false)
    })

    // Toggle visibility
    await act(async () => {
      await result.current.togglePublic()
    })

    // Verify the visibility was toggled
    expect(supabase.from).toHaveBeenCalledWith('ratings')
    expect(mockFromUpdate).toHaveBeenCalledWith({ is_public: false })
    expect(mockFromEq).toHaveBeenCalledWith('playground_id', mockPlaygroundId)
    expect(mockFromEq).toHaveBeenCalledWith('user_id', mockUser.id)
  })

  it('sets optimistic rating', async () => {
    const { result } = renderHook(() => useRatings(mockPlaygroundId))

    // Wait for initial fetch to complete
    await waitFor(() => {
      expect(result.current.loading).toBe(false)
    })

    // Set optimistic rating
    act(() => {
      result.current.setOptimisticRating({
        avgRating: 4.2,
        totalRatings: 5,
        userRating: 3,
        isPublic: false
      })
    })

    // Verify the rating was updated
    expect(result.current.rating).toEqual({
      avgRating: 4.2,
      totalRatings: 5,
      userRating: 3,
      isPublic: false
    })
  })

  it('handles case when user is not logged in', async () => {
    // Mock user as null
    ;(useAuth as ReturnType<typeof vi.fn>).mockReturnValue({
      user: null,
      loading: false
    })

    const { result } = renderHook(() => useRatings(mockPlaygroundId))

    // Wait for the fetch to complete
    await waitFor(() => {
      expect(result.current.loading).toBe(false)
    })

    // Verify the result has no user rating
    expect(result.current.rating.userRating).toBeNull()
    expect(result.current.rating.isPublic).toBe(false)

    // Verify that only public ratings were fetched
    expect(mockFromMaybeSingle).not.toHaveBeenCalled()
  })
})
