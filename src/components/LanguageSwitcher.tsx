import { Box, Button, HStack, Text } from '@chakra-ui/react'
import { useTranslation } from 'react-i18next'

export default function LanguageSwitcher() {
  const { t, i18n } = useTranslation()

  const changeLanguage = (lng: string) => {
    i18n.changeLanguage(lng)
  }

  return (
    <Box>
      <Text fontSize="sm" color="gray.500" mb={2}>
        {t('menu.language')}
      </Text>
      <HStack spacing={2}>
        <Button
          size="sm"
          variant={i18n.language === 'en' ? 'solid' : 'solid'}
          onClick={() => changeLanguage('en')}
          bg="#4A90E2"
          color="white"
          border="1px solid"
          borderColor="#4A90E2"
          opacity={i18n.language === 'en' ? 1 : 0.5}
          fontWeight={i18n.language === 'en' ? 'bold' : 'normal'}
          _hover={{
            bg: i18n.language === 'en' ? '#4A90E2' : '#FF9F43',
            opacity: 1,
            transform: 'translateY(-2px)',
            borderColor: i18n.language === 'en' ? '#4A90E2' : '#FF9F43'
          }}
          _active={{
            bg: i18n.language === 'en' ? '#4A90E2' : '#4A90E2',
            transform: 'translateY(0)'
          }}
          transition="all 0.2s"
        >
          English
        </Button>
        <Button
          size="sm"
          variant={i18n.language === 'fi' ? 'solid' : 'solid'}
          onClick={() => changeLanguage('fi')}
          bg="#4A90E2"
          color="white"
          border="1px solid"
          borderColor="#4A90E2"
          opacity={i18n.language === 'fi' ? 1 : 0.5}
          fontWeight={i18n.language === 'fi' ? 'bold' : 'normal'}
          _hover={{
            bg: i18n.language === 'fi' ? '#4A90E2' : '#FF9F43',
            opacity: 1,
            transform: 'translateY(-2px)',
            borderColor: i18n.language === 'fi' ? '#4A90E2' : '#FF9F43'
          }}
          _active={{
            bg: i18n.language === 'fi' ? '#4A90E2' : '#4A90E2',
            transform: 'translateY(0)'
          }}
          transition="all 0.2s"
        >
          Suomi
        </Button>
      </HStack>
    </Box>
  )
}
