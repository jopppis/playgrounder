import {
  Box,
  Button,
  ButtonProps,
  Flex,
  Grid,
  GridItem,
  HStack,
  Icon,
  Text
} from '@chakra-ui/react'
import { useEffect, useState } from 'react'
import { useTranslation } from 'react-i18next'
import { FaSignInAlt, FaUserPlus } from 'react-icons/fa'
import { HiChartBar, HiLanguage } from 'react-icons/hi2'
import { useAuth } from '../hooks/useAuth'
import { usePlaygrounds } from '../hooks/usePlaygrounds'
import { useToast } from '../hooks/useToast'
import { useUserPreferences } from '../hooks/useUserPreferences'
import { supabase } from '../lib/supabaseClient'
import { Visit } from '../types/database.types'
import About from './About'
import Account from './Account'
import ChangePasswordModal from './Auth/ChangePasswordModal'
import RemoveAccount from './Auth/RemoveAccount'
import SignInModal from './Auth/SignInModal'
import SignUp from './Auth/SignUp'
import LanguageSwitcher from './LanguageSwitcher'
import { FilterOptions } from './PlaygroundFilter'
import Stats from './Stats'
import { Switch } from './ui/switch'

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
  const { preferences, loading: preferencesLoading, updateDefaultPublicRatings } = useUserPreferences()
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
        <>
          <Box
            position="fixed"
            top={0}
            left={0}
            right={0}
            bottom={0}
            bg="transparent"
            zIndex={1999}
            onClick={onClose}
            data-testid="menu-drawer-overlay"
          />
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
            pb="env(safe-area-inset-bottom))"
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
                      <HStack gap={2} align="center" justify="space-between" w="100%">
                        <Text fontSize="sm" color="gray.600">
                          {t('playground.defaultPublic')}
                        </Text>
                        <Box
                          position="relative"
                          zIndex={2001}
                          cursor="pointer"
                          onClick={async (e) => {
                            e.preventDefault()
                            e.stopPropagation()
                            if (!preferencesLoading) {
                              try {
                                const newValue = !preferences.defaultPublicRatings
                                await updateDefaultPublicRatings(newValue)
                                toast.showSuccess({
                                  title: t('playground.defaultPublic'),
                                  description: newValue
                                    ? t('playground.defaultPublicEnabled')
                                    : t('playground.defaultPublicDisabled')
                                })
                              } catch {
                                // Error is handled in the hook
                              }
                            }
                          }}
                        >
                          <Switch
                            size="sm"
                            checked={preferences.defaultPublicRatings}
                            onCheckedChange={() => {}}
                            disabled={preferencesLoading || !user}
                            aria-label={t('playground.defaultPublic')}
                          />
                        </Box>
                      </HStack>
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
                <About onBack={() => setShowAbout(false)} />
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
        </>
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
