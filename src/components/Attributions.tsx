import { Box, Button, ButtonProps, Stack, Text, VStack } from '@chakra-ui/react'
import { useTranslation } from 'react-i18next'

type AttributionsProps = {
  onBack: () => void
}

const Attributions = ({ onBack }: AttributionsProps) => {
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

  const sections = [
    'technologies',
    'mapLayers',
    'playgroundInfo',
    'icons'
  ]

  return (
    <>
      <Text fontSize="lg" fontWeight="bold" color="brand.500" mb={4}>
        {t('menu.attributions.title')}
      </Text>
      <Stack gap={6} mb={6}>
        {sections.map((section) => (
          <Box key={section}>
            <Text fontSize="md" fontWeight="semibold" color="gray.700" mb={2}>
              {t(`menu.attributions.sections.${section}.title`)}
            </Text>
            <VStack align="stretch" gap={1}>
              {(t(`menu.attributions.sections.${section}.content`, { returnObjects: true }) as string[]).map((item, index) => (
                <Text key={index} fontSize="sm" color="gray.500">
                  {item}
                </Text>
              ))}
            </VStack>
          </Box>
        ))}
      </Stack>
      <Box flex={1} />
      <Button
        {...buttonProps}
        onClick={onBack}
      >
        {t('menu.attributions.backButton')}
      </Button>
    </>
  )
}

export default Attributions
