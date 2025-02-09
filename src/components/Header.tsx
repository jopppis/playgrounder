import { Box, Button } from '@chakra-ui/react'
import { useState } from 'react'
import MenuDrawer from './MenuDrawer'

const Header = () => {
  const [isMenuOpen, setIsMenuOpen] = useState(false)

  return (
    <Box position="absolute" top={4} right={4}>
      <Button
        size="md"
        variant="solid"
        onClick={() => setIsMenuOpen(true)}
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
      <MenuDrawer
        isOpen={isMenuOpen}
        onClose={() => setIsMenuOpen(false)}
      />
    </Box>
  )
}

export default Header
