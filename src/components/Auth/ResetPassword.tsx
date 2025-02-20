import {
    Box,
    Button,
    Heading,
    Input,
    Stack,
    Text,
} from '@chakra-ui/react'
import { AuthError } from '@supabase/supabase-js'
import { useState } from 'react'
import { useTranslation } from 'react-i18next'
import { useNavigate } from 'react-router-dom'
import { useToast } from '../../hooks/useToast'
import { supabase } from '../../lib/supabaseClient'

export default function ResetPassword() {
  const { t } = useTranslation()
  const navigate = useNavigate()
  const [password, setPassword] = useState('')
  const [loading, setLoading] = useState(false)
  const [error, setError] = useState<string | null>(null)
  const toast = useToast()

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault()
    setLoading(true)
    setError(null)

    try {
      const { error: updateError } = await supabase.auth.updateUser({
        password: password
      })

      if (updateError) throw updateError

      toast.showSuccess({
        title: t('auth.resetPassword.success.title')
      })

      navigate('/')
    } catch (err) {
      const authError = err as AuthError
      setError(authError.message)
      toast.showError({
        title: t('auth.resetPassword.error.title')
      })
    } finally {
      setLoading(false)
    }
  }

  return (
    <Box
      p={6}
      bg="gray.50"
      color="gray.700"
      borderRadius="xl"
    >
      <Stack gap={8}>
        <Heading size="lg" color="brand.500">{t('auth.resetPassword.title')}</Heading>
        {error && (
          <Box p={4} bg="red.50" color="red.500" borderRadius="md" w="100%">
            <Text fontWeight="bold">{t('auth.resetPassword.error.title')}</Text>
            <Text>{error}</Text>
          </Box>
        )}
        <Box as="form" onSubmit={handleSubmit}>
          <Stack gap={4}>
            <Box>
              <Text mb={2} color="gray.700">{t('auth.resetPassword.newPassword')}</Text>
              <Input
                type="password"
                name="password"
                autoComplete="new-password"
                data-form-type="password"
                value={password}
                onChange={(e: React.ChangeEvent<HTMLInputElement>) => setPassword(e.target.value)}
                placeholder={t('auth.resetPassword.newPasswordPlaceholder')}
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
              {loading ? t('auth.resetPassword.button.loading') : t('auth.resetPassword.button.default')}
            </Button>
          </Stack>
        </Box>
      </Stack>
    </Box>
  )
}
