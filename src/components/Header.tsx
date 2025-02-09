import { Box, Button } from '@chakra-ui/react'
import { useState } from 'react'
import MenuDrawer from './MenuDrawer'

interface HeaderProps {
  selectedServiceLevel: number | null
  onServiceLevelChange: (level: number | null) => void
}

const Header = ({ selectedServiceLevel, onServiceLevelChange }: HeaderProps) => {
  const [isMenuOpen, setIsMenuOpen] = useState(false)

  return (
    <>
      <Box position="fixed" top={4} right={4} zIndex={2100}>
        <Button
          size="md"
          variant="solid"
          onClick={() => setIsMenuOpen(!isMenuOpen)}
          bg="#4A90E2"
          color="white"
          border="1px solid"
          borderColor="#4A90E2"
          _hover={{
            bg: '#FF9F43',
            transform: 'translateY(-2px)',
            borderColor: '#FF9F43'
          }}
          _active={{
            bg: '#4A90E2',
            transform: 'translateY(0)'
          }}
          transition="all 0.2s"
          boxShadow="md"
          borderRadius="md"
          fontSize="xl"
        >
          ≡
        </Button>
      </Box>
      <MenuDrawer
        isOpen={isMenuOpen}
        onClose={() => setIsMenuOpen(false)}
        selectedServiceLevel={selectedServiceLevel}
        onServiceLevelChange={onServiceLevelChange}
      />
    </>
  )
}

export default Header
