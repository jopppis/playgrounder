import {
  Box,
  CloseButton,
  Dialog,
  Flex,
  Heading,
  Portal,
  Tabs
} from '@chakra-ui/react'
import { useTranslation } from 'react-i18next'
import { useAuth } from '../../hooks/useAuth'
import { useIsAdmin } from '../../hooks/useIsAdmin'
import ProposalList from './ProposalList'

interface AdminPageProps {
  isOpen: boolean
  onClose: () => void
}

export default function AdminPage({ isOpen, onClose }: AdminPageProps) {
  const { t } = useTranslation()
  const { user } = useAuth()
  const { isAdmin, loading } = useIsAdmin()

  if (loading) {
    return null
  }

  // Only allow admin users
  if (!user || !isAdmin) {
    return null
  }

  return (
    <Dialog.Root size="cover" open={isOpen} onOpenChange={() => onClose()} motionPreset="slide-in-bottom">
      <Portal>
        <Dialog.Backdrop bg="blackAlpha.200" backdropFilter="blur(4px)" />
        <Dialog.Positioner>
          <Dialog.Content maxW="1200px" w="100%" mx="auto" bg="white" maxH="100vh" display="flex" flexDirection="column">
            <Dialog.Header borderBottomWidth="1px" borderColor="brand.100" bg="brand.50" flex="0 0 auto">
              <Flex justify="space-between" align="center" px={4}>
                <Dialog.Title as="div">
                  <Heading size="lg" color="brand.700">{t('admin.title')}</Heading>
                </Dialog.Title>
                <Dialog.CloseTrigger asChild>
                  <CloseButton
                    size="lg"
                    color="white"
                    bg="brand.500"
                    _hover={{ bg: 'brand.600' }}
                  />
                </Dialog.CloseTrigger>
              </Flex>
            </Dialog.Header>

            <Dialog.Body p={0} flex="1 1 auto" overflow="hidden">
              <Tabs.Root
                variant="line"
                colorPalette="brand"
                defaultValue="proposals"
                h="100%"
                display="flex"
                flexDirection="column"
              >
                <Tabs.List
                  p={1}
                  borderBottomWidth="1px"
                  display="flex"
                  gap={1}
                  flex="0 0 auto"
                  css={{
                    "& [role='tab']": {
                      bg: 'white',
                      color: 'brand.900',
                      px: 4,
                      py: 2,
                      _hover: { bg: 'brand.50', color: 'secondary.500' },
                      _selected: {
                        color: 'brand.700',
                        fontWeight: 'semibold'
                      }
                    }
                  }}
                >
                  <Tabs.Trigger value="proposals">
                    {t('admin.tabs.proposals')}
                  </Tabs.Trigger>
                  <Tabs.Trigger value="playgrounds">
                    {t('admin.tabs.playgrounds')}
                  </Tabs.Trigger>
                  <Tabs.Trigger value="users">
                    {t('admin.tabs.users')}
                  </Tabs.Trigger>
                </Tabs.List>

                <Box flex="1 1 auto" overflow="hidden">
                  <Tabs.Content value="proposals" h="100%" p={4}>
                    <ProposalList onNavigateToPlayground={(lat, lng) => {
                      onClose()
                      window.dispatchEvent(new CustomEvent('navigateToPlayground', {
                        detail: { lat, lng, zoom: 14 }
                      }))
                    }} />
                  </Tabs.Content>

                  <Tabs.Content value="playgrounds" h="100%" p={4}>
                    <Heading size="md" color="brand.700">{t('admin.playgroundsManagement')}</Heading>
                    {/* Playground management UI will go here */}
                  </Tabs.Content>

                  <Tabs.Content value="users" h="100%" p={4}>
                    <Heading size="md" color="brand.700">{t('admin.usersManagement')}</Heading>
                    {/* User management UI will go here */}
                  </Tabs.Content>
                </Box>
              </Tabs.Root>
            </Dialog.Body>
          </Dialog.Content>
        </Dialog.Positioner>
      </Portal>
    </Dialog.Root>
  )
}
