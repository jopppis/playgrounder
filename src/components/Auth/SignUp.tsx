import {
  Box,
  Button,
  Heading,
  Icon,
  Input,
  Stack,
  Text,
} from '@chakra-ui/react'
import HCaptcha from '@hcaptcha/react-hcaptcha'
import { AuthError } from '@supabase/supabase-js'
import { useRef, useState } from 'react'
import { useTranslation } from 'react-i18next'
import { FaTimes } from 'react-icons/fa'
import { useToast } from '../../hooks/useToast'
import { supabase } from '../../lib/supabaseClient'

interface SignUpProps {
  onSuccess?: () => void
}

export default function SignUp({ onSuccess }: SignUpProps) {
  const { t } = useTranslation()
  const [email, setEmail] = useState('')
  const [password, setPassword] = useState('')
  const [loading, setLoading] = useState(false)
  const [error, setError] = useState<string | null>(null)
  const [success, setSuccess] = useState(false)
  const [captchaToken, setCaptchaToken] = useState<string | null>(null)
  const captchaRef = useRef<HCaptcha>(null)
  const toast = useToast()

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault()
    setLoading(true)
    setError(null)
    setSuccess(false)

    if (!captchaToken) {
      setError(t('auth.signUp.error.captchaRequired'))
      setLoading(false)
      return
    }

    try {
      const { error: signUpError } = await supabase.auth.signUp({
        email,
        password,
        options: {
          captchaToken
        }
      })

      if (signUpError) throw signUpError

      setSuccess(true)
      toast.showSuccess({
        title: t('auth.signUp.success.title'),
        description: t('auth.signUp.success.message')
      })

      onSuccess?.()
    } catch (err) {
      const authError = err as AuthError
      setError(authError.message)
      toast.showError({
        title: t('auth.signUp.error.title'),
        description: t('auth.signUp.error.message')
      })
      // Reset captcha on error
      captchaRef.current?.resetCaptcha()
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
          aria-label={t('auth.signUp.close')}
        >
          <Icon as={FaTimes} boxSize={3} />
        </Button>
      </Box>
      <Stack gap={8}>
        <Heading size="lg" color="brand.500">{t('auth.signUp.title')}</Heading>
        {error && (
          <Box p={4} bg="red.50" color="red.500" borderRadius="md" w="100%">
            <Text fontWeight="bold">{t('auth.signUp.error.title')}</Text>
            <Text>{error}</Text>
          </Box>
        )}
        {success && (
          <Box p={4} bg="green.50" color="green.500" borderRadius="md" w="100%">
            <Text fontWeight="bold">{t('auth.signUp.success.title')}</Text>
            <Text>{t('auth.signUp.success.message')}</Text>
          </Box>
        )}
        <Box as="form" onSubmit={handleSubmit}>
          <Stack gap={4}>
            <Box>
              <Text mb={2} color="gray.700">{t('auth.signUp.email')}</Text>
              <Input
                type="email"
                name="email"
                autoComplete="username"
                value={email}
                onChange={(e: React.ChangeEvent<HTMLInputElement>) => setEmail(e.target.value)}
                placeholder={t('auth.signUp.emailPlaceholder')}
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
              <Text mb={2} color="gray.700">{t('auth.signUp.password')}</Text>
              <Input
                type="password"
                name="password"
                autoComplete="new-password"
                data-form-type="password"
                value={password}
                onChange={(e: React.ChangeEvent<HTMLInputElement>) => setPassword(e.target.value)}
                placeholder={t('auth.signUp.passwordPlaceholder')}
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
            <Box>
              <HCaptcha
                ref={captchaRef}
                sitekey={import.meta.env.VITE_HCAPTCHA_SITE_KEY}
                onVerify={(token) => setCaptchaToken(token)}
                onExpire={() => setCaptchaToken(null)}
              />
            </Box>
            <Button
              type="submit"
              bg="brand.500"
              color="white"
              w="100%"
              disabled={loading || !captchaToken}
              size="lg"
              _hover={{ bg: 'secondary.500', transform: 'translateY(-2px)' }}
              _active={{ bg: 'brand.500', transform: 'translateY(0)' }}
              transition="all 0.2s"
            >
              {loading ? t('auth.signUp.button.loading') : t('auth.signUp.button.default')}
            </Button>
          </Stack>
        </Box>
      </Stack>
    </Box>
  )
}
