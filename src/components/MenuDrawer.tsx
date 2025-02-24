import {
  Box,
  Button,
  ButtonProps,
  Flex,
  Grid,
  GridItem,
  Icon,
  Link,
  Text
} from '@chakra-ui/react'
import { useEffect, useState } from 'react'
import { useTranslation } from 'react-i18next'
import { FaGithub, FaSignInAlt, FaUserPlus } from 'react-icons/fa'
import { HiChartBar, HiLanguage } from 'react-icons/hi2'
import { useAuth } from '../hooks/useAuth'
import { usePlaygrounds } from '../hooks/usePlaygrounds'
import { useToast } from '../hooks/useToast'
import { supabase } from '../lib/supabaseClient'
import { Visit } from '../types/database.types'
import Account from './Account'
import ChangePasswordModal from './Auth/ChangePasswordModal'
import RemoveAccount from './Auth/RemoveAccount'
import SignInModal from './Auth/SignInModal'
import SignUp from './Auth/SignUp'
import LanguageSwitcher from './LanguageSwitcher'
import { FilterOptions } from './PlaygroundFilter'
import Stats from './Stats'

export type MenuDrawerProps = {
  isOpen: boolean
  onClose: () => void
  showSignIn: boolean
  setShowSignIn: (show: boolean) => void
  filters: FilterOptions
  filteredPlaygroundCount: number
  currentCity: string | null
  visits: Visit[]
}

const MenuDrawer = ({
  isOpen,
  onClose,
  showSignIn,
  setShowSignIn,
  filters,
  filteredPlaygroundCount,
  currentCity,
  visits
}: MenuDrawerProps) => {
  const { t } = useTranslation()
  const { user } = useAuth()
  const { playgrounds } = usePlaygrounds()
  const [showAbout, setShowAbout] = useState(false)
  const [showStats, setShowStats] = useState(false)
  const [showSignUp, setShowSignUp] = useState(false)
  const [showAccount, setShowAccount] = useState(false)
  const [showRemoveAccount, setShowRemoveAccount] = useState(false)
  const [showChangePassword, setShowChangePassword] = useState(false)
  const toast = useToast()

  useEffect(() => {
    if (!isOpen) {
      setShowAbout(false)
      setShowStats(false)
      setShowAccount(false)
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
            {!showAbout && !showStats && !showAccount ? (
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
                    <Grid templateColumns="repeat(2, 1fr)" gap={2}>
                      <Button
                        {...buttonProps}
                        onClick={handleSignOut}
                      >
                        {t('auth.signOut.button')}
                      </Button>
                      <Button
                        {...buttonProps}
                        onClick={() => setShowAccount(true)}
                      >
                        {t('menu.buttons.account')}
                      </Button>
                    </Grid>
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
                <Button
                  {...buttonProps}
                  onClick={(e) => handleClick(e, () => setShowStats(true))}
                >
                  <Icon as={HiChartBar} boxSize={4} />
                  <Text>{t('stats.title')}</Text>
                </Button>
              </Flex>
            ) : showStats ? (
              <Stats
                playgrounds={playgrounds}
                visits={visits}
                filters={filters}
                filteredPlaygroundCount={filteredPlaygroundCount}
                onBack={() => setShowStats(false)}
                currentCity={currentCity}
              />
            ) : showAccount ? (
              <Account onBack={() => setShowAccount(false)} />
            ) : (
              <>
                <Text fontSize="lg" fontWeight="bold" color="brand.500" mb={4}>
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
                  <Text>{import.meta.env.APP_VERSION}-{import.meta.env.BUILD_ID}</Text>
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
          {!showAbout && !showStats && !showAccount && (
            <Box pt={4} borderTop="1px solid" borderColor="brand.100">
              <Button
                {...buttonProps}
                onClick={(e) => handleClick(e, () => setShowAbout(true))}
                mb={4}
              >
                {t('menu.buttons.about')}
              </Button>
              <Box borderTop="1px solid" borderColor="brand.100" pt={4}>
                <Flex align="center" gap={2}>
                  <Icon as={HiLanguage} boxSize={5} color="brand.500" />
                  <Box flex={1}>
                    <LanguageSwitcher />
                  </Box>
                </Flex>
              </Box>
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

      {showSignIn && <SignInModal onClose={() => setShowSignIn(false)} onMenuClose={onClose} />}
      {showRemoveAccount && <RemoveAccount onClose={() => setShowRemoveAccount(false)} />}
      {showChangePassword && <ChangePasswordModal onClose={() => setShowChangePassword(false)} />}
    </>
  )
}

export default MenuDrawer
