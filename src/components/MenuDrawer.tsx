import {
  Box,
  Button,
  ButtonProps,
  Flex,
  Grid,
  GridItem,
  Icon,
  Link,
  Text,
} from '@chakra-ui/react'
import { useEffect, useState } from 'react'
import { useTranslation } from 'react-i18next'
import { FaGithub, FaSignInAlt, FaUserPlus } from 'react-icons/fa'
import { useAuth } from '../hooks/useAuth'
import { useToast } from '../hooks/useToast'
import { supabase } from '../lib/supabaseClient'
import ChangePasswordModal from './Auth/ChangePasswordModal'
import RemoveAccount from './Auth/RemoveAccount'
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
  const [showRemoveAccount, setShowRemoveAccount] = useState(false)
  const [showChangePassword, setShowChangePassword] = useState(false)
  const toast = useToast()

  useEffect(() => {
    if (!isOpen) {
      setShowAbout(false)
    }
  }, [isOpen])

  const handleSignOut = async (e: React.MouseEvent) => {
    e.stopPropagation()
    await supabase.auth.signOut()
    onClose()
    toast.showSuccess({
      title: t('auth.signOut.success.title'),
      description: t('auth.signOut.success.message')
    })
  }

  const handleClick = (e: React.MouseEvent, action: () => void) => {
    e.stopPropagation()
    action()
  }

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

  return (
    <>
      {isOpen && (
        <Box
          position="fixed"
          top={0}
          right={0}
          h="100%"
          maxH="100%"
          w={{ base: "85%", sm: "300px" }}
          maxW="300px"
          bg="white"
          boxShadow="dark-lg"
          p={4}
          zIndex={2000}
          color="gray.700"
          borderLeft="1px solid"
          borderColor="brand.100"
          display="flex"
          flexDirection="column"
          overflowY="auto"
          overflowX="hidden"
          onClick={(e) => {
            e.preventDefault()
            e.stopPropagation()
          }}
          data-testid="menu-drawer"
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
                      {...buttonProps}
                      onClick={handleSignOut}
                    >
                      {t('auth.signOut.button')}
                    </Button>
                    <Button
                      {...buttonProps}
                      onClick={() => setShowChangePassword(true)}
                    >
                      {t('auth.changePassword.button.default')}
                    </Button>
                    <Button
                      {...buttonProps}
                      bg="red.500"
                      borderColor="red.500"
                      _hover={{ bg: 'red.600', borderColor: 'red.600' }}
                      onClick={() => setShowRemoveAccount(true)}
                    >
                      {t('auth.removeAccount.button')}
                    </Button>
                  </>
                ) : (
                  <Grid
                    templateColumns={{ base: "1fr", sm: "repeat(2, minmax(0, 1fr))" }}
                    gap={2}
                    w="100%"
                  >
                    <GridItem w="100%">
                      <Button
                        {...buttonProps}
                        onClick={(e) => handleClick(e, () => setShowSignUp(true))}
                        minW={0}
                      >
                        <Icon as={FaUserPlus} boxSize={3.5} flexShrink={0} />
                        <Box as="span">
                          {t('auth.signUp.title')}
                        </Box>
                      </Button>
                    </GridItem>
                    <GridItem w="100%">
                      <Button
                        {...buttonProps}
                        onClick={(e) => handleClick(e, () => setShowSignIn(true))}
                        minW={0}
                      >
                        <Icon as={FaSignInAlt} boxSize={3.5} flexShrink={0} />
                        <Box as="span">
                          {t('auth.signIn.title')}
                        </Box>
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
                <Link
                  href="https://github.com/jopppis/playgrounder"
                  target="_blank"
                  rel="noopener noreferrer"
                  display="flex"
                  gap={2}
                  color="brand.500"
                  _hover={{ color: 'secondary.500' }}
                  transition="all 0.2s"
                  mb={6}
                  alignItems="center"
                  onClick={(e) => e.stopPropagation()}
                >
                  <Icon as={FaGithub} boxSize={5} />
                  <Text>{t('menu.about.github')}</Text>
                </Link>
                <Box flex={1} />
                <Link
                  href={`https://github.com/jopppis/playgrounder/releases/tag/v${import.meta.env.APP_VERSION}`}
                  target="_blank"
                  rel="noopener noreferrer"
                  display="flex"
                  gap={1}
                  color="gray.500"
                  _hover={{ color: 'secondary.500' }}
                  transition="all 0.2s"
                  mb={2}
                  alignItems="center"
                  onClick={(e) => e.stopPropagation()}
                >
                  <Text>{t('menu.about.version')}:</Text>
                  <Text>{import.meta.env.APP_VERSION}</Text>
                </Link>
                <Text fontSize="sm" color="gray.500" mb={4}>
                  {t('menu.about.acknowledgments')}
                </Text>
                <Button
                  {...buttonProps}
                  onClick={(e) => handleClick(e, () => setShowAbout(false))}
                >
                  {t('menu.about.backButton')}
                </Button>
              </>
            )}
          </Box>
          {!showAbout && (
            <Box pt={4} borderTop="1px solid" borderColor="purple.100">
              <Button
                {...buttonProps}
                onClick={(e) => handleClick(e, () => setShowAbout(true))}
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
          onClick={(e) => {
            e.stopPropagation()
            setShowSignUp(false)
          }}
          data-testid="sign-up-modal"
        >
          <Box
            bg="white"
            borderRadius="md"
            maxW="md"
            w="90%"
            onClick={(e) => e.stopPropagation()}
          >
            <SignUp onSuccess={() => setShowSignUp(false)} />
          </Box>
        </Box>
      )}

      {showSignIn && <SignInModal onClose={() => setShowSignIn(false)} />}
      {showRemoveAccount && <RemoveAccount onClose={() => setShowRemoveAccount(false)} />}
      {showChangePassword && <ChangePasswordModal onClose={() => setShowChangePassword(false)} />}
    </>
  )
}

export default MenuDrawer
