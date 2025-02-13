import { toaster } from '../components/ui/toaster'

interface ToastOptions {
  title?: string
  description?: string
  duration?: number
  closable?: boolean
  action?: {
    label: string
    onClick: () => void
  }
}

export const useToast = () => {
  const showSuccess = (options: ToastOptions) => {
    toaster.create({
      ...options,
      type: 'success',
      meta: {
        closable: options.closable ?? true
      }
    })
  }

  const showError = (options: ToastOptions) => {
    toaster.create({
      ...options,
      type: 'error',
      meta: {
        closable: options.closable ?? true
      }
    })
  }

  const showLoading = (options: ToastOptions) => {
    toaster.create({
      ...options,
      type: 'loading',
      meta: {
        closable: options.closable ?? false
      }
    })
  }

  const showInfo = (options: ToastOptions) => {
    toaster.create({
      ...options,
      type: 'info',
      meta: {
        closable: options.closable ?? true
      }
    })
  }

  return {
    showSuccess,
    showError,
    showLoading,
    showInfo
  }
}
