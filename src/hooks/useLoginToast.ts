import { useCallback } from 'react'
import { useTranslation } from 'react-i18next'
import { useToast } from './useToast'

// Store the last toast time globally so it persists across component instances
let lastLoginToastTime = 0
const FIFTEEN_SECONDS_MS = 15 * 1000

/**
 * Hook for showing login toasts with throttling across all component instances
 * Will only show a toast at most once every 15 seconds
 */
export const useLoginToast = () => {
  const { t } = useTranslation()
  const toast = useToast()

  const showLoginToast = useCallback(() => {
    const now = Date.now()

    // Only show toast if 15 seconds have passed since the last one
    if (now - lastLoginToastTime >= FIFTEEN_SECONDS_MS) {
      toast.showInfo({
        title: t('common.loginRequired'),
        description: t('playground.loginToInteract')
      })
      lastLoginToastTime = now
    }
  }, [toast, t])

  return { showLoginToast }
}
