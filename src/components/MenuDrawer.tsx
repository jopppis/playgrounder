import {
  Box,
  Button,
  Grid,
  GridItem,
  Text
} from '@chakra-ui/react'
import { useEffect, useState } from 'react'
import { useNavigate } from 'react-router-dom'
import SignUp from './Auth/SignUp'

type MenuDrawerProps = {
  isOpen: boolean
  onClose: () => void
}

const MenuDrawer = ({ isOpen, onClose }: MenuDrawerProps) => {
  const [showAbout, setShowAbout] = useState(false)
  const [showSignUp, setShowSignUp] = useState(false)
  const navigate = useNavigate()

  useEffect(() => {
    if (!isOpen) {
      setShowAbout(false)
    }
  }, [isOpen])

  const handleNavigation = (path: string) => {
    navigate(path)
    onClose()
  }

  const handleOpenSignUp = () => {
    setShowSignUp(true)
  }

  const handleCloseSignUp = () => {
    setShowSignUp(false)
  }

  return (
    <>
      {isOpen && (
        <Box
          position="fixed"
          top={0}
          right={0}
          h="100vh"
          w="300px"
          bg="gray.800"
          boxShadow="dark-lg"
          p={4}
          zIndex={2000}
          color="white"
        >
          <Button
            size="sm"
            onClick={onClose}
            position="absolute"
            right={2}
            top={2}
            variant="ghost"
            color="white"
            _hover={{ bg: 'whiteAlpha.200' }}
            fontSize="md"
          >
            ×
          </Button>
          <Box pt={12}>
            {!showAbout ? (
              <>
                <Grid templateColumns="repeat(2, 1fr)" gap={2} mb={4}>
                  <GridItem>
                    <Button
                      w="100%"
                      variant="solid"
                      colorScheme="teal"
                      onClick={handleOpenSignUp}
                    >
                      Sign Up
                    </Button>
                  </GridItem>
                  <GridItem>
                    <Button
                      w="100%"
                      variant="outline"
                      color="white"
                      _hover={{ bg: 'whiteAlpha.200' }}
                      onClick={() => handleNavigation('/signin')}
                    >
                      Sign In
                    </Button>
                  </GridItem>
                </Grid>
                <Button
                  w="100%"
                  variant="ghost"
                  color="white"
                  _hover={{ bg: 'whiteAlpha.200' }}
                  onClick={() => setShowAbout(true)}
                >
                  About
                </Button>
              </>
            ) : (
              <>
                <Text fontSize="lg" fontWeight="bold" mb={4}>
                  About Playground Tracker
                </Text>
                <Text mb={4}>
                  A community-driven app to help parents and caregivers find and share local playgrounds.
                  Track your visits, rate playgrounds, and discover new places for your children to play.
                </Text>
                <Button
                  w="100%"
                  variant="ghost"
                  color="white"
                  _hover={{ bg: 'whiteAlpha.200' }}
                  onClick={() => setShowAbout(false)}
                >
                  Back to Menu
                </Button>
              </>
            )}
          </Box>
        </Box>
      )}

      {showSignUp && (
        <Box
          position="fixed"
          top={0}
          left={0}
          right={0}
          bottom={0}
          bg="blackAlpha.600"
          zIndex={2100}
          display="flex"
          alignItems="center"
          justifyContent="center"
          onClick={handleCloseSignUp}
        >
          <Box
            bg="white"
            borderRadius="md"
            maxW="md"
            w="90%"
            onClick={e => e.stopPropagation()}
          >
            <SignUp onSuccess={handleCloseSignUp} />
          </Box>
        </Box>
      )}
    </>
  )
}

export default MenuDrawer
