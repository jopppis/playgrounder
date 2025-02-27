import {
  Box,
  Button,
  Heading,
  Icon,
  Input,
  Stack,
  Text,
} from '@chakra-ui/react'
import { AuthError } from '@supabase/supabase-js'
import { useState } from 'react'
import { useTranslation } from 'react-i18next'
import { FaTimes } from 'react-icons/fa'
import Turnstile from 'react-turnstile'
import { useToast } from '../../hooks/useToast'
import { supabase } from '../../lib/supabaseClient'

interface ForgotPasswordProps {
  onSuccess?: () => void
}

export default function ForgotPassword({ onSuccess }: ForgotPasswordProps) {
  const { t } = useTranslation()
  const [email, setEmail] = useState('')
  const [loading, setLoading] = useState(false)
  const [error, setError] = useState<string | null>(null)
  const [captchaToken, setCaptchaToken] = useState<string | null>(null)
  const toast = useToast()
  // Enable Turnstile in development and production, but not in local
  const enableTurnstile = import.meta.env.VITE_APP_ENV !== 'local'

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault()
    setLoading(true)
    setError(null)

    if (enableTurnstile && !captchaToken) {
      setError(t('auth.forgotPassword.error.captchaRequired'))
      setLoading(false)
      return
    }

    try {
      const { error: resetError } = await supabase.auth.resetPasswordForEmail(email, {
        redirectTo: `${window.location.origin}/?reset_password=true`,
        captchaToken: enableTurnstile && captchaToken ? captchaToken : undefined
      })

      if (resetError) throw resetError

      toast.showSuccess({
        title: t('auth.forgotPassword.success.title'),
        description: t('auth.forgotPassword.success.message')
      })

      onSuccess?.()
    } catch (err) {
      const authError = err as AuthError
      setError(authError.message)
      toast.showError({
        title: t('auth.forgotPassword.error.title'),
        description: t('auth.forgotPassword.error.message')
      })
      // Reset captcha on error
      if (window.turnstile) {
        window.turnstile.reset();
      }
      setCaptchaToken(null)
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
          aria-label={t('auth.signIn.close')}
        >
          <Icon as={FaTimes} boxSize={3} />
        </Button>
      </Box>
      <Stack gap={8}>
        <Heading size="lg" color="brand.500">{t('auth.forgotPassword.title')}</Heading>
        {error && (
          <Box p={4} bg="red.50" color="red.500" borderRadius="md" w="100%">
            <Text fontWeight="bold">{t('auth.forgotPassword.error.title')}</Text>
            <Text>{error}</Text>
          </Box>
        )}
        <Box as="form" onSubmit={handleSubmit}>
          <Stack gap={4}>
            <Box>
              <Text mb={2} color="gray.700">{t('auth.forgotPassword.email')}</Text>
              <Input
                type="email"
                name="email"
                autoComplete="username"
                value={email}
                onChange={(e: React.ChangeEvent<HTMLInputElement>) => setEmail(e.target.value)}
                placeholder={t('auth.forgotPassword.emailPlaceholder')}
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
            {enableTurnstile && (
              <Box>
                <Turnstile
                  key={error ? `turnstile-${Date.now()}` : 'turnstile'}
                  sitekey={import.meta.env.VITE_TURNSTILE_SITE_KEY}
                  onSuccess={(token) => setCaptchaToken(token)}
                  onError={() => setCaptchaToken(null)}
                  onExpire={() => setCaptchaToken(null)}
                  theme="light"
                />
              </Box>
            )}
            <Button
              type="submit"
              bg="brand.500"
              color="white"
              w="100%"
              disabled={loading || (enableTurnstile && !captchaToken)}
              size="lg"
              _hover={{ bg: 'secondary.500', transform: 'translateY(-2px)' }}
              _active={{ bg: 'brand.500', transform: 'translateY(0)' }}
              transition="all 0.2s"
            >
              {loading ? t('auth.forgotPassword.submitButton.loading') : t('auth.forgotPassword.submitButton.default')}
            </Button>
          </Stack>
        </Box>
      </Stack>
    </Box>
  )
}
