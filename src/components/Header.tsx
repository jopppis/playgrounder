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
        backgroundColor="gray.800"
        color="white"
        _hover={{ backgroundColor: "gray.700" }}
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
