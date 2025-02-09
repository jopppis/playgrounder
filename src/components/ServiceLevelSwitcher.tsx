import { Box, Button, HStack, Text } from '@chakra-ui/react'
import { useTranslation } from 'react-i18next'

interface ServiceLevelSwitcherProps {
  selectedLevel: number | null
  onLevelChange: (level: number | null) => void
}

export default function ServiceLevelSwitcher({ selectedLevel, onLevelChange }: ServiceLevelSwitcherProps) {
  const { t } = useTranslation()

  return (
    <Box>
      <Text fontSize="sm" color="gray.500" mb={2}>
        {t('playground.serviceLevel')}
      </Text>
      <HStack spacing={2}>
        <Button
          size="sm"
          variant="solid"
          onClick={() => onLevelChange(null)}
          bg="#4A90E2"
          color="white"
          border="1px solid"
          borderColor="#4A90E2"
          opacity={selectedLevel === null ? 1 : 0.5}
          fontWeight={selectedLevel === null ? 'bold' : 'normal'}
          _hover={{
            bg: selectedLevel === null ? '#4A90E2' : '#FF9F43',
            opacity: 1,
            transform: 'translateY(-2px)',
            borderColor: selectedLevel === null ? '#4A90E2' : '#FF9F43'
          }}
          _active={{
            bg: selectedLevel === null ? '#4A90E2' : '#4A90E2',
            transform: 'translateY(0)'
          }}
          transition="all 0.2s"
        >
          {t('playground.allLevels')}
        </Button>
        <Button
          size="sm"
          variant="solid"
          onClick={() => onLevelChange(1)}
          bg="#4A90E2"
          color="white"
          border="1px solid"
          borderColor="#4A90E2"
          opacity={selectedLevel === 1 ? 1 : 0.5}
          fontWeight={selectedLevel === 1 ? 'bold' : 'normal'}
          _hover={{
            bg: selectedLevel === 1 ? '#4A90E2' : '#FF9F43',
            opacity: 1,
            transform: 'translateY(-2px)',
            borderColor: selectedLevel === 1 ? '#4A90E2' : '#FF9F43'
          }}
          _active={{
            bg: selectedLevel === 1 ? '#4A90E2' : '#4A90E2',
            transform: 'translateY(0)'
          }}
          transition="all 0.2s"
        >
          {t('playground.level1Short')}
        </Button>
        <Button
          size="sm"
          variant="solid"
          onClick={() => onLevelChange(2)}
          bg="#4A90E2"
          color="white"
          border="1px solid"
          borderColor="#4A90E2"
          opacity={selectedLevel === 2 ? 1 : 0.5}
          fontWeight={selectedLevel === 2 ? 'bold' : 'normal'}
          _hover={{
            bg: selectedLevel === 2 ? '#4A90E2' : '#FF9F43',
            opacity: 1,
            transform: 'translateY(-2px)',
            borderColor: selectedLevel === 2 ? '#4A90E2' : '#FF9F43'
          }}
          _active={{
            bg: selectedLevel === 2 ? '#4A90E2' : '#4A90E2',
            transform: 'translateY(0)'
          }}
          transition="all 0.2s"
        >
          {t('playground.level2Short')}
        </Button>
      </HStack>
    </Box>
  )
}
