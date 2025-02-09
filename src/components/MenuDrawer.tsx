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
import { useAuth } from '../hooks/useAuth'
import { supabase } from '../lib/supabaseClient'
import SignInModal from './Auth/SignInModal'
import SignUp from './Auth/SignUp'
import LanguageSwitcher from './LanguageSwitcher'
import ServiceLevelSwitcher from './ServiceLevelSwitcher'

type MenuDrawerProps = {
  isOpen: boolean
  onClose: () => void
  selectedServiceLevel: number | null
  onServiceLevelChange: (level: number | null) => void
}

const MenuDrawer = ({ isOpen, onClose, selectedServiceLevel, onServiceLevelChange }: MenuDrawerProps) => {
  const { t } = useTranslation()
  const { user } = useAuth()
  const [showAbout, setShowAbout] = useState(false)
  const [showSignUp, setShowSignUp] = useState(false)
  const [showSignIn, setShowSignIn] = useState(false)
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

  const handleOpenSignIn = () => {
    setShowSignIn(true)
  }

  const handleCloseSignIn = () => {
    setShowSignIn(false)
  }

  const handleSignOut = async () => {
    await supabase.auth.signOut()
    onClose()
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
          bg="white"
          boxShadow="dark-lg"
          p={4}
          zIndex={2000}
          color="gray.700"
          borderLeft="1px solid"
          borderColor="purple.100"
        >
          <Box pt={4}>
            {!showAbout ? (
              <VStack spacing={4} align="stretch">
                {user ? (
                  <>
                    <Box>
                      <Text fontSize="sm" color="gray.500">
                        {t('auth.user.email')}
                      </Text>
                      <Text fontSize="md" fontWeight="medium" color="gray.700">
                        {user.email}
                      </Text>
                    </Box>
                    <Button
                      w="100%"
                      variant="solid"
                      bg="#4A90E2"
                      color="white"
                      border="1px solid"
                      borderColor="#4A90E2"
                      _hover={{ bg: '#FF9F43', transform: 'translateY(-2px)', borderColor: '#FF9F43' }}
                      _active={{ bg: '#4A90E2', transform: 'translateY(0)' }}
                      transition="all 0.2s"
                      onClick={handleSignOut}
                    >
                      {t('auth.signOut.button')}
                    </Button>
                  </>
                ) : (
                  <Grid templateColumns="repeat(2, 1fr)" gap={2} w="100%">
                    <GridItem>
                      <Button
                        w="100%"
                        variant="solid"
                        bg="#4A90E2"
                        color="white"
                        border="1px solid"
                        borderColor="#4A90E2"
                        _hover={{ bg: '#FF9F43', transform: 'translateY(-2px)', borderColor: '#FF9F43' }}
                        _active={{ bg: '#4A90E2', transform: 'translateY(0)' }}
                        transition="all 0.2s"
                        onClick={handleOpenSignUp}
                      >
                        {t('auth.signUp.title')}
                      </Button>
                    </GridItem>
                    <GridItem>
                      <Button
                        w="100%"
                        variant="solid"
                        bg="#4A90E2"
                        color="white"
                        border="1px solid"
                        borderColor="#4A90E2"
                        _hover={{ bg: '#FF9F43', transform: 'translateY(-2px)', borderColor: '#FF9F43' }}
                        _active={{ bg: '#4A90E2', transform: 'translateY(0)' }}
                        transition="all 0.2s"
                        onClick={handleOpenSignIn}
                      >
                        {t('auth.signIn.title')}
                      </Button>
                    </GridItem>
                  </Grid>
                )}
                <Box borderBottomWidth="1px" borderColor="purple.100" my={2} />
                <Button
                  w="100%"
                  variant="solid"
                  bg="#4A90E2"
                  color="white"
                  border="1px solid"
                  borderColor="#4A90E2"
                  _hover={{ bg: '#FF9F43', transform: 'translateY(-2px)', borderColor: '#FF9F43' }}
                  _active={{ bg: '#4A90E2', transform: 'translateY(0)' }}
                  transition="all 0.2s"
                  onClick={() => setShowAbout(true)}
                >
                  {t('menu.buttons.about')}
                </Button>
                <Box pt={4}>
                  <ServiceLevelSwitcher
                    selectedLevel={selectedServiceLevel}
                    onLevelChange={onServiceLevelChange}
                  />
                </Box>
                <Box pt={4}>
                  <LanguageSwitcher />
                </Box>
              </VStack>
            ) : (
              <>
                <Text fontSize="lg" fontWeight="bold" color="purple.600" mb={4}>
                  {t('menu.about.title')}
                </Text>
                <Text mb={4} color="gray.700">
                  {t('menu.about.description')}
                </Text>
                <Button
                  w="100%"
                  variant="solid"
                  bg="#4A90E2"
                  color="white"
                  border="1px solid"
                  borderColor="#4A90E2"
                  _hover={{ bg: '#FF9F43', transform: 'translateY(-2px)', borderColor: '#FF9F43' }}
                  _active={{ bg: '#4A90E2', transform: 'translateY(0)' }}
                  transition="all 0.2s"
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

      {showSignIn && <SignInModal onClose={handleCloseSignIn} />}
    </>
  )
}

export default MenuDrawer
