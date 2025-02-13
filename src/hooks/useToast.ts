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
    const { closable, ...rest } = options
    toaster.create({
      ...rest,
      type: 'success',
      meta: {
        closable: closable ?? true
      }
    })
  }

  const showError = (options: ToastOptions) => {
    const { closable, ...rest } = options
    toaster.create({
      ...rest,
      type: 'error',
      meta: {
        closable: closable ?? true
      }
    })
  }

  const showLoading = (options: ToastOptions) => {
    const { closable, ...rest } = options
    toaster.create({
      ...rest,
      type: 'loading',
      meta: {
        closable: closable ?? false
      }
    })
  }

  const showInfo = (options: ToastOptions) => {
    const { closable, ...rest } = options
    toaster.create({
      ...rest,
      type: 'info',
      meta: {
        closable: closable ?? true
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
