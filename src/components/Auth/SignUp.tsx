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
  const toast = useToast()

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault()
    setLoading(true)
    setError(null)
    setSuccess(false)

    try {
      const { error: signUpError } = await supabase.auth.signUp({
        email,
        password,
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
    } finally {
      setLoading(false)
    }
  }

  return (
    <Box
      position="relative"
      p={6}
      bg="#F9F9F9"
      color="#2D3E50"
      borderRadius="xl"
      boxShadow="xl"
      border="1px solid"
      borderColor="#4A90E2"
    >
      <Box position="absolute" right={2} top={2}>
        <Button
          onClick={onSuccess}
          color="white"
          bg="#4A90E2"
          _hover={{ bg: '#FF9F43' }}
          size="sm"
          minW="24px"
          h="24px"
          p={0}
          aria-label="Close"
        >
          <Icon as={FaTimes} boxSize={3} />
        </Button>
      </Box>
      <Stack gap={8}>
        <Heading size="lg" color="#4A90E2">{t('auth.signUp.title')}</Heading>
        {error && (
          <Box p={4} bg="#FF6B6B20" color="#FF6B6B" borderRadius="md" w="100%">
            <Text fontWeight="bold">{t('auth.signUp.error.title')}</Text>
            <Text>{error}</Text>
          </Box>
        )}
        {success && (
          <Box p={4} bg="#6FCF9720" color="#6FCF97" borderRadius="md" w="100%">
            <Text fontWeight="bold">{t('auth.signUp.success.title')}</Text>
            <Text>{t('auth.signUp.success.message')}</Text>
          </Box>
        )}
        <Box as="form" onSubmit={handleSubmit}>
          <Stack gap={4}>
            <Box>
              <Text mb={2} color="#2D3E50">{t('auth.signUp.email')}</Text>
              <Input
                type="email"
                value={email}
                onChange={(e: React.ChangeEvent<HTMLInputElement>) => setEmail(e.target.value)}
                placeholder={t('auth.signUp.emailPlaceholder')}
                required
                bg="white"
                color="#2D3E50"
                borderColor="#4A90E2"
                _hover={{ borderColor: '#FF9F43' }}
                _focus={{ borderColor: '#6FCF97', boxShadow: '0 0 0 1px #6FCF97' }}
                _placeholder={{ color: '#82828280' }}
              />
            </Box>
            <Box>
              <Text mb={2} color="#2D3E50">{t('auth.signUp.password')}</Text>
              <Input
                type="password"
                value={password}
                onChange={(e: React.ChangeEvent<HTMLInputElement>) => setPassword(e.target.value)}
                placeholder={t('auth.signUp.passwordPlaceholder')}
                required
                minLength={6}
                bg="white"
                color="#2D3E50"
                borderColor="#4A90E2"
                _hover={{ borderColor: '#FF9F43' }}
                _focus={{ borderColor: '#6FCF97', boxShadow: '0 0 0 1px #6FCF97' }}
                _placeholder={{ color: '#82828280' }}
              />
            </Box>
            <Button
              type="submit"
              bg="#4A90E2"
              color="white"
              w="100%"
              disabled={loading}
              size="lg"
              _hover={{ bg: '#FF9F43', transform: 'translateY(-2px)' }}
              _active={{ bg: '#4A90E2', transform: 'translateY(0)' }}
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
