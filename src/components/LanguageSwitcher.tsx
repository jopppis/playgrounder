import { Button, HStack } from '@chakra-ui/react'
import { useTranslation } from 'react-i18next'

export default function LanguageSwitcher() {
  const { i18n } = useTranslation()

  const changeLanguage = (lng: string) => {
    i18n.changeLanguage(lng)
  }

  return (
    <HStack spacing={2}>
      <Button
        size="sm"
        variant={i18n.language === 'en' ? 'solid' : 'outline'}
        onClick={() => changeLanguage('en')}
        colorScheme="teal"
      >
        EN
      </Button>
      <Button
        size="sm"
        variant={i18n.language === 'fi' ? 'solid' : 'outline'}
        onClick={() => changeLanguage('fi')}
        colorScheme="teal"
      >
        FI
      </Button>
    </HStack>
  )
}
