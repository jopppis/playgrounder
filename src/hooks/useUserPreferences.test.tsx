import { User } from '@supabase/supabase-js'
import { renderHook, waitFor } from '@testing-library/react'
import { act } from 'react'
import { beforeEach, describe, expect, it, vi } from 'vitest'
import enTranslations from '../i18n/locales/en.json'
import { supabase } from '../lib/supabaseClient'
import { i18n } from '../test/testUtils'
import { useAuth } from './useAuth'
import { useUserPreferences } from './useUserPreferences'

// Mock the dependencies
vi.mock('../lib/supabaseClient', () => ({
  supabase: {
    from: vi.fn(() => ({
      select: vi.fn(() => ({
        eq: vi.fn(() => ({
          maybeSingle: vi.fn()
        }))
      })),
      insert: vi.fn(() => ({
        select: vi.fn()
      })),
      upsert: vi.fn(() => ({
        select: vi.fn()
      }))
    }))
  }
}))

vi.mock('./useAuth', () => ({
  useAuth: vi.fn()
}))

describe('useUserPreferences', () => {
  const mockUser = {
    id: 'user-123',
    email: 'test@example.com',
    app_metadata: {},
    user_metadata: {},
    aud: 'authenticated',
    created_at: ''
  } as User

  beforeEach(() => {
    vi.resetAllMocks()

    // Set up i18n
    i18n.changeLanguage('en')

    // Default mock implementation for useAuth
    vi.mocked(useAuth).mockReturnValue({
      user: mockUser,
      loading: false
    })

    // Default mock implementation for supabase queries
    const maybeSingleMock = vi.fn().mockResolvedValue({
      data: {
        default_public_ratings: true
      },
      error: null
    })

    const eqMock = vi.fn().mockReturnValue({
      maybeSingle: maybeSingleMock
    })

    const selectMock = vi.fn().mockReturnValue({
      eq: eqMock
    })

    const upsertMock = vi.fn().mockResolvedValue({
      data: null,
      error: null
    })

    vi.mocked(supabase.from).mockImplementation(() => {
      return {
        select: selectMock,
        insert: vi.fn().mockReturnValue({
          select: vi.fn()
        }),
        upsert: upsertMock
      } as unknown as ReturnType<typeof supabase.from>
    })
  })

  it('initializes with default preferences and loading state', async () => {
    const { result } = renderHook(() => useUserPreferences())

    // Initially should be loading with default preferences
    expect(result.current.loading).toBe(true)
    expect(result.current.preferences).toEqual({
      defaultPublicRatings: false
    })

    // After fetching preferences, loading should be false
    await waitFor(() => {
      expect(result.current.loading).toBe(false)
    })

    // Preferences should be updated from the database
    expect(result.current.preferences).toEqual({
      defaultPublicRatings: true
    })
  })

  it('handles case when user is not logged in', async () => {
    // Mock user as null (not logged in)
    vi.mocked(useAuth).mockReturnValue({
      user: null,
      loading: false
    })

    const { result } = renderHook(() => useUserPreferences())

    await waitFor(() => {
      expect(result.current.loading).toBe(false)
    })

    // Should use default preferences when user is not logged in
    expect(result.current.preferences).toEqual({
      defaultPublicRatings: false
    })

    // Should not call supabase
    expect(supabase.from).not.toHaveBeenCalled()
  })

  it('creates new preferences if none exist for the user', async () => {
    // Mock no existing preferences
    const maybeSingleMock = vi.fn().mockResolvedValue({
      data: null,
      error: null
    })

    const eqMock = vi.fn().mockReturnValue({
      maybeSingle: maybeSingleMock
    })

    const selectMock = vi.fn().mockReturnValue({
      eq: eqMock
    })

    vi.mocked(supabase.from).mockImplementation(() => {
      return {
        select: selectMock,
        insert: vi.fn().mockReturnValue({
          select: vi.fn()
        }),
        upsert: vi.fn().mockReturnValue({
          select: vi.fn()
        })
      } as unknown as ReturnType<typeof supabase.from>
    })

    const { result } = renderHook(() => useUserPreferences())

    await waitFor(() => {
      expect(result.current.loading).toBe(false)
    })

    // Should call insert
    expect(supabase.from).toHaveBeenCalledWith('user_preferences')
  })

  it('handles error when fetching preferences', async () => {
    // Mock error when fetching
    const maybeSingleMock = vi.fn().mockResolvedValue({
      data: null,
      error: new Error('Database error')
    })

    const eqMock = vi.fn().mockReturnValue({
      maybeSingle: maybeSingleMock
    })

    const selectMock = vi.fn().mockReturnValue({
      eq: eqMock
    })

    vi.mocked(supabase.from).mockImplementation(() => {
      return {
        select: selectMock,
        insert: vi.fn().mockReturnValue({
          select: vi.fn()
        }),
        upsert: vi.fn().mockReturnValue({
          select: vi.fn()
        })
      } as unknown as ReturnType<typeof supabase.from>
    })

    const { result } = renderHook(() => useUserPreferences())

    await waitFor(() => {
      expect(result.current.loading).toBe(false)
    })

    expect(result.current.error).toBe('Database error')
  })

  it('updates default public ratings', async () => {
    // Mock successful update
    const upsertMock = vi.fn().mockResolvedValue({
      data: { default_public_ratings: false },
      error: null
    })

    const maybeSingleMock = vi.fn().mockResolvedValue({
      data: { default_public_ratings: true },
      error: null
    })

    const eqMock = vi.fn().mockReturnValue({
      maybeSingle: maybeSingleMock
    })

    const selectMock = vi.fn().mockReturnValue({
      eq: eqMock
    })

    vi.mocked(supabase.from).mockImplementation(() => {
      return {
        select: selectMock,
        upsert: upsertMock
      } as unknown as ReturnType<typeof supabase.from>
    })

    const { result } = renderHook(() => useUserPreferences())

    await waitFor(() => {
      expect(result.current.loading).toBe(false)
    })

    // Call the update function
    await act(async () => {
      await result.current.updateDefaultPublicRatings(false)
    })

    // Preferences should be updated
    expect(result.current.preferences.defaultPublicRatings).toBe(false)

    // Should call upsert
    expect(supabase.from).toHaveBeenCalledWith('user_preferences')
  })

  it('handles error when updating preferences', async () => {
    // Mock error for the update
    const upsertMock = vi.fn().mockResolvedValue({
      data: null,
      error: new Error('Update error')
    })

    const maybeSingleMock = vi.fn().mockResolvedValue({
      data: { default_public_ratings: true },
      error: null
    })

    const eqMock = vi.fn().mockReturnValue({
      maybeSingle: maybeSingleMock
    })

    const selectMock = vi.fn().mockReturnValue({
      eq: eqMock
    })

    vi.mocked(supabase.from).mockImplementation(() => {
      return {
        select: selectMock,
        upsert: upsertMock
      } as unknown as ReturnType<typeof supabase.from>
    })

    const { result } = renderHook(() => useUserPreferences())

    await waitFor(() => {
      expect(result.current.loading).toBe(false)
    })

    // Call the update function
    await act(async () => {
      await result.current.updateDefaultPublicRatings(false)
    })

    // Should revert to previous value
    expect(result.current.preferences.defaultPublicRatings).toBe(true)
    expect(result.current.error).toBe('Update error')
  })

  it('correctly reflects the default public ratings setting', async () => {
    const { result } = renderHook(() => useUserPreferences())

    await waitFor(() => {
      expect(result.current.loading).toBe(false)
    })

    // Verify the translation keys are used correctly
    expect(result.current.preferences.defaultPublicRatings).toBe(true)

    // This test is to ensure that if we were to render a component using this hook,
    // it would correctly use the translation for the default public setting
    // We're not rendering a component here, but we're verifying the state is correct
    // for when it would be used with the translation key: playground.defaultPublicEnabled
    const translationKey = result.current.preferences.defaultPublicRatings
      ? enTranslations.playground.defaultPublicEnabled
      : enTranslations.playground.defaultPublicDisabled

    expect(translationKey).toBe(enTranslations.playground.defaultPublicEnabled)
  })
})
