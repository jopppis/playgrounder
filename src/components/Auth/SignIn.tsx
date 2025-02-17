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
import { useNavigate } from 'react-router-dom'
import { useToast } from '../../hooks/useToast'
import { supabase } from '../../lib/supabaseClient'

interface SignInProps {
  onSuccess?: () => void
}

export default function SignIn({ onSuccess }: SignInProps) {
  const { t } = useTranslation()
  const navigate = useNavigate()
  const [email, setEmail] = useState('')
  const [password, setPassword] = useState('')
  const [loading, setLoading] = useState(false)
  const [error, setError] = useState<string | null>(null)
  const toast = useToast()

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault()
    setLoading(true)
    setError(null)

    try {
      const { error: signInError } = await supabase.auth.signInWithPassword({
        email,
        password,
      })

      if (signInError) throw signInError

      toast.showSuccess({
        title: t('auth.signIn.success.title'),
        description: t('auth.signIn.success.message')
      })

      navigate('/')
      onSuccess?.()
    } catch (err) {
      const authError = err as AuthError
      setError(authError.message)
      toast.showError({
        title: t('auth.signIn.error.title'),
        description: t('auth.signIn.error.message')
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
          aria-label="Close"
        >
          <Icon as={FaTimes} boxSize={3} />
        </Button>
      </Box>
      <Stack gap={8}>
        <Heading size="lg" color="brand.500">{t('auth.signIn.title')}</Heading>
        {error && (
          <Box p={4} bg="red.50" color="red.500" borderRadius="md" w="100%">
            <Text fontWeight="bold">{t('auth.signIn.error.title')}</Text>
            <Text>{error}</Text>
          </Box>
        )}
        <Box as="form" onSubmit={handleSubmit}>
          <Stack gap={4}>
            <Box>
              <Text mb={2} color="gray.700">{t('auth.signIn.email')}</Text>
              <Input
                type="email"
                value={email}
                onChange={(e: React.ChangeEvent<HTMLInputElement>) => setEmail(e.target.value)}
                placeholder={t('auth.signIn.emailPlaceholder')}
                required
                bg="white"
                color="gray.700"
                borderColor="brand.500"
                _hover={{ borderColor: 'secondary.500' }}
                _focus={{ borderColor: 'green.500', boxShadow: '0 0 0 1px green.500' }}
                _placeholder={{ color: 'gray.400' }}
              />
            </Box>
            <Box>
              <Text mb={2} color="gray.700">{t('auth.signIn.password')}</Text>
              <Input
                type="password"
                value={password}
                onChange={(e: React.ChangeEvent<HTMLInputElement>) => setPassword(e.target.value)}
                placeholder={t('auth.signIn.passwordPlaceholder')}
                required
                bg="white"
                color="gray.700"
                borderColor="brand.500"
                _hover={{ borderColor: 'secondary.500' }}
                _focus={{ borderColor: 'green.500', boxShadow: '0 0 0 1px green.500' }}
                _placeholder={{ color: 'gray.400' }}
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
              {loading ? t('auth.signIn.button.loading') : t('auth.signIn.button.default')}
            </Button>
          </Stack>
        </Box>
      </Stack>
    </Box>
  )
}
