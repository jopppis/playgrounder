import {
  Box,
  Button,
  Flex,
  Grid,
  GridItem,
  Icon,
  Text,
} from '@chakra-ui/react'
import { useEffect, useState } from 'react'
import { useTranslation } from 'react-i18next'
import { FaGithub, FaSignInAlt, FaUserPlus } from 'react-icons/fa'
import { useAuth } from '../hooks/useAuth'
import { supabase } from '../lib/supabaseClient'
import SignInModal from './Auth/SignInModal'
import SignUp from './Auth/SignUp'
import LanguageSwitcher from './LanguageSwitcher'

type MenuDrawerProps = {
  isOpen: boolean
  onClose: () => void
  showSignIn: boolean
  setShowSignIn: (show: boolean) => void
}

const MenuDrawer = ({
  isOpen,
  onClose,
  showSignIn,
  setShowSignIn
}: MenuDrawerProps) => {
  const { t } = useTranslation()
  const { user } = useAuth()
  const [showAbout, setShowAbout] = useState(false)
  const [showSignUp, setShowSignUp] = useState(false)

  useEffect(() => {
    if (!isOpen) {
      setShowAbout(false)
    }
  }, [isOpen])

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
          display="flex"
          flexDirection="column"
        >
          <Box pt={14} flex={1}>
            {!showAbout ? (
              <Flex direction="column" gap={4} h="100%">
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
                        onClick={() => setShowSignUp(true)}
                        leftIcon={<Icon as={FaUserPlus} />}
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
                        onClick={() => setShowSignIn(true)}
                        leftIcon={<Icon as={FaSignInAlt} />}
                      >
                        {t('auth.signIn.title')}
                      </Button>
                    </GridItem>
                  </Grid>
                )}
                <Box borderBottomWidth="1px" borderColor="purple.100" my={2} />
                <Box>
                  <LanguageSwitcher />
                </Box>
              </Flex>
            ) : (
              <>
                <Text fontSize="lg" fontWeight="bold" color="purple.600" mb={4}>
                  {t('menu.about.title')}
                </Text>
                <Text mb={6} color="gray.700">
                  {t('menu.about.description')}
                </Text>
                <Flex
                  as="a"
                  href="https://github.com/jopppis/playgrounder"
                  target="_blank"
                  rel="noopener noreferrer"
                  gap={2}
                  color="#4A90E2"
                  _hover={{ color: '#FF9F43' }}
                  transition="all 0.2s"
                  mb={6}
                  alignItems="center"
                >
                  <Icon as={FaGithub} boxSize={5} />
                  <Text>{t('menu.about.github')}</Text>
                </Flex>
                <Box flex={1} />
                <Text fontSize="sm" color="gray.500" mb={4}>
                  {t('menu.about.acknowledgments')}
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
          {!showAbout && (
            <Box pt={4} borderTop="1px solid" borderColor="purple.100">
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
            </Box>
          )}
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
          onClick={() => setShowSignUp(false)}
        >
          <Box
            bg="white"
            borderRadius="md"
            maxW="md"
            w="90%"
            onClick={(e: React.MouseEvent) => e.stopPropagation()}
          >
            <SignUp onSuccess={() => setShowSignUp(false)} />
          </Box>
        </Box>
      )}

      {showSignIn && <SignInModal onClose={() => setShowSignIn(false)} />}
    </>
  )
}

export default MenuDrawer
