import { toaster } from '../components/ui/toaster-exports'

interface ToastOptions {
  title?: string
  description?: string
  duration?: number
  action?: {
    label: string
    onClick: () => void
  }
}

export const useToast = () => {
  const showSuccess = (options: ToastOptions) => {
    toaster.create({
      ...options,
      type: 'success'
    })
  }

  const showError = (options: ToastOptions) => {
    toaster.create({
      ...options,
      type: 'error'
    })
  }

  const showLoading = (options: ToastOptions) => {
    toaster.create({
      ...options,
      type: 'loading'
    })
  }

  const showInfo = (options: ToastOptions) => {
    toaster.create({
      ...options,
      type: 'info'
    })
  }

  return {
    showSuccess,
    showError,
    showLoading,
    showInfo
  }
}
