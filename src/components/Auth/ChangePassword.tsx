import {
    Box,
    Button,
    Heading,
    Icon,
    Input,
    Stack,
    Text,
} from '@chakra-ui/react'
import { useState } from 'react'
import { useTranslation } from 'react-i18next'
import { FaTimes } from 'react-icons/fa'
import { useToast } from '../../hooks/useToast'
import { supabase } from '../../lib/supabaseClient'

interface ChangePasswordProps {
  onSuccess?: () => void
}

export default function ChangePassword({ onSuccess }: ChangePasswordProps) {
  const { t } = useTranslation()
  const [currentPassword, setCurrentPassword] = useState('')
  const [newPassword, setNewPassword] = useState('')
  const [loading, setLoading] = useState(false)
  const [error, setError] = useState<string | null>(null)
  const toast = useToast()

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault()
    setLoading(true)
    setError(null)

    try {
      // First verify the current password
      const { error: signInError } = await supabase.auth.signInWithPassword({
        email: (await supabase.auth.getUser()).data.user?.email || '',
        password: currentPassword
      })

      if (signInError) {
        throw new Error(t('auth.changePassword.error.incorrectPassword'))
      }

      // Then update to the new password
      const { error: updateError } = await supabase.auth.updateUser({
        password: newPassword
      })

      if (updateError) throw updateError

      toast.showSuccess({
        title: t('auth.changePassword.success.title'),
        description: t('auth.changePassword.success.message')
      })

      onSuccess?.()
    } catch (err) {
      const error = err as Error
      setError(error.message)
      toast.showError({
        title: t('auth.changePassword.error.title'),
        description: t('auth.changePassword.error.message')
      })
    } finally {
      setLoading(false)
    }
  }

  return (
    <Box
      position="relative"
      p={6}
      bg="gray.50"
      color="gray.700"
      borderRadius="xl"
      boxShadow="xl"
      border="1px solid"
      borderColor="brand.500"
    >
      <Box position="absolute" right={2} top={2}>
        <Button
          onClick={onSuccess}
          color="white"
          bg="brand.500"
          _hover={{ bg: 'secondary.500' }}
          size="sm"
          minW="24px"
          h="24px"
          p={0}
          aria-label={t('auth.changePassword.close')}
        >
          <Icon as={FaTimes} boxSize={3} />
        </Button>
      </Box>
      <Stack gap={8}>
        <Heading size="lg" color="brand.500">{t('auth.changePassword.title')}</Heading>
        {error && (
          <Box p={4} bg="red.50" color="red.500" borderRadius="md" w="100%">
            <Text fontWeight="bold">{t('auth.changePassword.error.title')}</Text>
            <Text>{error}</Text>
          </Box>
        )}
        <Box as="form" onSubmit={handleSubmit}>
          <Stack gap={4}>
            <Box>
              <Text mb={2} color="gray.700">{t('auth.changePassword.currentPassword')}</Text>
              <Input
                type="password"
                name="currentPassword"
                autoComplete="current-password"
                value={currentPassword}
                onChange={(e: React.ChangeEvent<HTMLInputElement>) => setCurrentPassword(e.target.value)}
                placeholder={t('auth.changePassword.currentPasswordPlaceholder')}
                required
                bg="white"
                _placeholder={{ color: 'gray.400' }}
                borderColor="brand.200"
                _hover={{ borderColor: 'brand.300' }}
                _focus={{
                  borderColor: 'brand.500',
                  boxShadow: '0 0 0 1px var(--chakra-colors-brand-500)',
                  outline: 'none'
                }}
              />
            </Box>
            <Box>
              <Text mb={2} color="gray.700">{t('auth.changePassword.newPassword')}</Text>
              <Input
                type="password"
                name="newPassword"
                autoComplete="new-password"
                value={newPassword}
                onChange={(e: React.ChangeEvent<HTMLInputElement>) => setNewPassword(e.target.value)}
                placeholder={t('auth.changePassword.newPasswordPlaceholder')}
                required
                minLength={8}
                bg="white"
                _placeholder={{ color: 'gray.400' }}
                borderColor="brand.200"
                _hover={{ borderColor: 'brand.300' }}
                _focus={{
                  borderColor: 'brand.500',
                  boxShadow: '0 0 0 1px var(--chakra-colors-brand-500)',
                  outline: 'none'
                }}
              />
            </Box>
            <Button
              type="submit"
              bg="brand.500"
              color="white"
              w="100%"
              disabled={loading}
              size="lg"
              _hover={{ bg: 'secondary.500', transform: 'translateY(-2px)' }}
              _active={{ bg: 'brand.500', transform: 'translateY(0)' }}
              transition="all 0.2s"
            >
              {loading ? t('auth.changePassword.button.loading') : t('auth.changePassword.button.default')}
            </Button>
          </Stack>
        </Box>
      </Stack>
    </Box>
  )
}
