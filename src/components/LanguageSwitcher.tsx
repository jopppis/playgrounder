import { Box, Button, HStack, Text } from '@chakra-ui/react'
import { useTranslation } from 'react-i18next'
import { useToast } from '../hooks/useToast'

export default function LanguageSwitcher() {
  const { t, i18n } = useTranslation()
  const toast = useToast()

  const changeLanguage = (lng: string) => {
    i18n.changeLanguage(lng)

    // Show success toast in the new language
    toast.showSuccess({
      title: t('menu.language.changed.title'),
      description: t('menu.language.changed.message')
    })
  }

  return (
    <Box>
      <Text fontSize="sm" color="gray.500" mb={2}>
        {t('menu.language')}
      </Text>
      <HStack gap={2}>
        <Button
          size="sm"
          variant={i18n.language === 'en' ? 'solid' : 'solid'}
          onClick={() => changeLanguage('en')}
          bg="brand.500"
          color="white"
          border="1px solid"
          borderColor="brand.500"
          opacity={i18n.language === 'en' ? 1 : 0.5}
          fontWeight={i18n.language === 'en' ? 'bold' : 'normal'}
          _hover={{
            bg: i18n.language === 'en' ? 'brand.500' : 'secondary.500',
            opacity: 1,
            transform: 'translateY(-2px)',
            borderColor: i18n.language === 'en' ? 'brand.500' : 'secondary.500'
          }}
          _active={{
            bg: i18n.language === 'en' ? 'brand.500' : 'brand.500',
            transform: 'translateY(0)'
          }}
          transition="all 0.2s"
        >
          {t('menu.en')}
        </Button>
        <Button
          size="sm"
          variant={i18n.language === 'fi' ? 'solid' : 'solid'}
          onClick={() => changeLanguage('fi')}
          bg="brand.500"
          color="white"
          border="1px solid"
          borderColor="brand.500"
          opacity={i18n.language === 'fi' ? 1 : 0.5}
          fontWeight={i18n.language === 'fi' ? 'bold' : 'normal'}
          _hover={{
            bg: i18n.language === 'fi' ? 'brand.500' : 'secondary.500',
            opacity: 1,
            transform: 'translateY(-2px)',
            borderColor: i18n.language === 'fi' ? 'brand.500' : 'secondary.500'
          }}
          _active={{
            bg: i18n.language === 'fi' ? 'brand.500' : 'brand.500',
            transform: 'translateY(0)'
          }}
          transition="all 0.2s"
        >
          {t('menu.fi')}
        </Button>
      </HStack>
    </Box>
  )
}
