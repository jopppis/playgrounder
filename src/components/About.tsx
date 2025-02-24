import { Box, Button, ButtonProps, Icon, Link, Text } from '@chakra-ui/react'
import { useTranslation } from 'react-i18next'
import { FaGithub } from 'react-icons/fa'

type AboutProps = {
  onBack: () => void
}

const About = ({ onBack }: AboutProps) => {
  const { t } = useTranslation()

  const buttonProps: ButtonProps = {
    w: "100%",
    variant: "solid",
    bg: "brand.500",
    color: "white",
    border: "1px solid",
    borderColor: "brand.500",
    _hover: { bg: 'secondary.500', transform: 'translateY(-2px)', borderColor: 'secondary.500' },
    _active: { bg: 'brand.500', transform: 'translateY(0)' },
    transition: "all 0.2s",
    display: "flex",
    alignItems: "center",
    justifyContent: "center",
    px: 3,
    h: "36px",
    gap: 2,
    fontSize: "sm"
  }

  const handleClick = (e: React.MouseEvent, action: () => void) => {
    e.stopPropagation()
    action()
  }

  return (
    <>
      <Text fontSize="lg" fontWeight="bold" color="brand.500" mb={4}>
        {t('menu.about.title')}
      </Text>
      <Text mb={6} color="gray.700">
        {t('menu.about.description')}
      </Text>
      <Link
        href="https://github.com/jopppis/playgrounder"
        target="_blank"
        rel="noopener noreferrer"
        display="flex"
        gap={2}
        color="brand.500"
        _hover={{ color: 'secondary.500' }}
        transition="all 0.2s"
        mb={6}
        alignItems="center"
        onClick={(e) => e.stopPropagation()}
      >
        <Icon as={FaGithub} boxSize={5} />
        <Text>{t('menu.about.github')}</Text>
      </Link>
      <Box flex={1} />
      <Link
        href={`https://github.com/jopppis/playgrounder/releases/tag/v${import.meta.env.APP_VERSION}`}
        target="_blank"
        rel="noopener noreferrer"
        display="flex"
        gap={1}
        color="gray.500"
        _hover={{ color: 'secondary.500' }}
        transition="all 0.2s"
        mb={2}
        alignItems="center"
        onClick={(e) => e.stopPropagation()}
      >
        <Text>{t('menu.about.version')}:</Text>
        <Text>{import.meta.env.APP_VERSION}-{import.meta.env.BUILD_ID}</Text>
      </Link>
      <Text fontSize="sm" color="gray.500" mb={4}>
        {t('menu.about.acknowledgments')}
      </Text>
      <Button
        {...buttonProps}
        onClick={(e) => handleClick(e, () => onBack())}
      >
        {t('menu.about.backButton')}
      </Button>
    </>
  )
}

export default About
