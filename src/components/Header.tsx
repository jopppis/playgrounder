import { Box, Button } from '@chakra-ui/react'
import { useEffect, useRef, useState } from 'react'
import { useLocation } from 'react-router-dom'
import MenuDrawer from './MenuDrawer'

interface HeaderProps {
  showSignIn?: boolean
  setShowSignIn?: (show: boolean) => void
}

const Header = ({ showSignIn = false, setShowSignIn = () => {} }: HeaderProps) => {
  const [isMenuOpen, setIsMenuOpen] = useState(false)
  const location = useLocation()
  const menuRef = useRef<HTMLDivElement>(null)

  useEffect(() => {
    // Check for email confirmation redirect
    const searchParams = new URLSearchParams(location.search)
    if (searchParams.has('email_confirm') || location.pathname === '/signin') {
      setShowSignIn(true)
    }
  }, [location, setShowSignIn])

  useEffect(() => {
    const handleClickOutside = (event: MouseEvent) => {
      if (menuRef.current && !menuRef.current.contains(event.target as Node)) {
        setIsMenuOpen(false)
      }
    }

    if (isMenuOpen) {
      document.addEventListener('mousedown', handleClickOutside)
      return () => {
        document.removeEventListener('mousedown', handleClickOutside)
      }
    }
  }, [isMenuOpen])

  return (
    <Box ref={menuRef}>
      <Box position="fixed" top={2} right={4} zIndex={2200}>
        <Button
          size="md"
          variant="solid"
          onClick={() => setIsMenuOpen(!isMenuOpen)}
          bg="brand.500"
          color="white"
          border="1px solid"
          borderColor="brand.500"
          _hover={{
            bg: 'secondary.500',
            transform: 'translateY(-2px)',
            borderColor: 'secondary.500'
          }}
          _active={{
            bg: 'brand.500',
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
        showSignIn={showSignIn}
        setShowSignIn={setShowSignIn}
      />
    </Box>
  )
}

export default Header
