import { useCallback } from 'react';
import { useTranslation } from 'react-i18next';
import { useToast } from './useToast';

// Store the last toast time globally so it persists across component instances
let lastLoginToastTime = 0;
const MIN_TOAST_INTERVAL_MS = 60 * 1000;

/**
 * Hook for showing login toasts with throttling across all component instances
 * Will only show a toast at most once every some seconds.
 */
export const useLoginToast = () => {
  const { t } = useTranslation();
  const toast = useToast();

  const showLoginToast = useCallback(() => {
    const now = Date.now();

    if (now - lastLoginToastTime >= MIN_TOAST_INTERVAL_MS) {
      toast.showInfo({
        title: t('common.loginRequired'),
        description: t('playground.loginToInteract'),
      });
      lastLoginToastTime = now;
    }
  }, [toast, t]);

  return { showLoginToast };
};
