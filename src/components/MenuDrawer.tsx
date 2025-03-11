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
import { HiChartBar, HiLanguage, HiShieldCheck } from 'react-icons/hi2'
import { useAuth } from '../hooks/useAuth'
import { useIsAdmin } from '../hooks/useIsAdmin'
import { useToast } from '../hooks/useToast'
import { useUserPreferences } from '../hooks/useUserPreferences'
import { supabase } from '../lib/supabaseClient'
import { PlaygroundWithCoordinates, Visit } from '../types/database.types'
import About from './About'
import Account from './Account'
import AdminPage from './Admin/AdminPage'
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
  editMode?: boolean
  setEditMode?: (editMode: boolean) => void
  loading?: boolean
  showStats?: boolean
  onStatsChange?: (show: boolean) => void
  playgrounds?: PlaygroundWithCoordinates[]
}

const MenuDrawer = ({
  isOpen,
  onClose,
  showSignIn,
  setShowSignIn,
  filters,
  filteredPlaygroundCount,
  currentCity,
  visits,
  editMode = false,
  setEditMode = () => {},
  loading = false,
  showStats: externalShowStats,
  onStatsChange,
  playgrounds
}: MenuDrawerProps) => {
  const { t } = useTranslation()
  const { user } = useAuth()
  const { isAdmin } = useIsAdmin()
  const { preferences, loading: preferencesLoading, updateDefaultPublicRatings } = useUserPreferences()
  const [showAbout, setShowAbout] = useState(false)
  const [internalShowStats, setInternalShowStats] = useState(false)
  const [showSignUp, setShowSignUp] = useState(false)
  const [showAccount, setShowAccount] = useState(false)
  const [showRemoveAccount, setShowRemoveAccount] = useState(false)
  const [showChangePassword, setShowChangePassword] = useState(false)
  const [showAdmin, setShowAdmin] = useState(false)
  const toast = useToast()

  // Use external or internal state for showStats
  const showStats = externalShowStats ?? internalShowStats
  const setShowStats = onStatsChange ?? setInternalShowStats

  useEffect(() => {
    if (!isOpen) {
      setShowAbout(false)
      if (!onStatsChange) {
        setInternalShowStats(false)
      }
      setShowAccount(false)
    }
  }, [isOpen, onStatsChange])

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

  const handleStatsClick = (e: React.MouseEvent) => {
    e.stopPropagation()
    setShowStats(true)
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
            pb="calc(env(safe-area-inset-bottom) + 1em)"
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

                      {/* Edit Mode Switch */}
                      <HStack gap={2} align="center" justify="space-between" w="100%">
                        <Text fontSize="sm" color="gray.600">
                          {t('playground.edit.editMode')}
                        </Text>
                        <Box
                          position="relative"
                          zIndex={2001}
                          cursor="pointer"
                          onClick={(e) => {
                            e.preventDefault()
                            e.stopPropagation()
                            const newEditMode = !editMode
                            setEditMode(newEditMode)
                            if (newEditMode) {
                              toast.showInfo({
                                title: t('playground.edit.editModeEnabled.title'),
                                description: t('playground.edit.editModeEnabled.description')
                              })
                            } else {
                              toast.showInfo({
                                title: t('playground.edit.editModeDisabled.title'),
                                description: t('playground.edit.editModeDisabled.description')
                              })
                            }
                          }}
                        >
                          <Switch
                            size="sm"
                            checked={editMode}
                            onCheckedChange={() => {}}
                            aria-label={t('playground.edit.editMode')}
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

                      {/* Admin button - only for admin users */}
                      {isAdmin && (
                        <Button
                          {...buttonProps}
                          onClick={() => {
                            setShowAdmin(true)
                            onClose()
                          }}
                        >
                          <Icon as={HiShieldCheck} boxSize={4} mr={2} />
                          {t('menu.buttons.admin')}
                        </Button>
                      )}
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
                    onClick={handleStatsClick}
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
                  loading={loading}
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

      {showSignIn && <SignInModal isOpen={showSignIn} onClose={() => setShowSignIn(false)} onMenuClose={onClose} />}
      {showRemoveAccount && <RemoveAccount isOpen={showRemoveAccount} onClose={() => setShowRemoveAccount(false)} />}
      {showChangePassword && <ChangePasswordModal isOpen={showChangePassword} onClose={() => setShowChangePassword(false)} />}
      {showSignUp && <SignUp isOpen={showSignUp} onClose={() => setShowSignUp(false)} onSuccess={() => setShowSignUp(false)} />}
      <AdminPage isOpen={showAdmin} onClose={() => setShowAdmin(false)} />
    </>
  )
}

export default MenuDrawer
