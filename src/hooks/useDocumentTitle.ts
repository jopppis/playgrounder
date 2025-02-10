import { useEffect } from 'react'
import { useTranslation } from 'react-i18next'

export const useDocumentTitle = () => {
  const { t, i18n } = useTranslation()

  useEffect(() => {
    document.title = t('app.name')
  }, [t, i18n.language])
}

export default useDocumentTitle
