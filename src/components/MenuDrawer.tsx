import {
  Box,
  Button,
  Grid,
  GridItem,
  Text,
  VStack
} from '@chakra-ui/react'
import { useEffect, useState } from 'react'
import { useTranslation } from 'react-i18next'
import { useNavigate } from 'react-router-dom'
import SignUp from './Auth/SignUp'
import LanguageSwitcher from './LanguageSwitcher'

type MenuDrawerProps = {
  isOpen: boolean
  onClose: () => void
}

const MenuDrawer = ({ isOpen, onClose }: MenuDrawerProps) => {
  const { t } = useTranslation()
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
            {t('menu.buttons.close')}
          </Button>
          <Box pt={12}>
            {!showAbout ? (
              <VStack spacing={4}>
                <Grid templateColumns="repeat(2, 1fr)" gap={2} w="100%">
                  <GridItem>
                    <Button
                      w="100%"
                      variant="solid"
                      colorScheme="teal"
                      onClick={handleOpenSignUp}
                    >
                      {t('auth.signUp.title')}
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
                      {t('auth.signIn.title')}
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
                  {t('menu.buttons.about')}
                </Button>
                <Box pt={4}>
                  <LanguageSwitcher />
                </Box>
              </VStack>
            ) : (
              <>
                <Text fontSize="lg" fontWeight="bold" mb={4}>
                  {t('menu.about.title')}
                </Text>
                <Text mb={4}>
                  {t('menu.about.description')}
                </Text>
                <Button
                  w="100%"
                  variant="ghost"
                  color="white"
                  _hover={{ bg: 'whiteAlpha.200' }}
                  onClick={() => setShowAbout(false)}
                >
                  {t('menu.about.backButton')}
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
            onClick={(e: React.MouseEvent) => e.stopPropagation()}
          >
            <SignUp onSuccess={handleCloseSignUp} />
          </Box>
        </Box>
      )}
    </>
  )
}

export default MenuDrawer
