import {
    Box,
    Button,
    CloseButton,
    Heading,
    Input,
    Stack,
    Text,
} from '@chakra-ui/react'
import { useState } from 'react'
import { useTranslation } from 'react-i18next'
import { useNavigate } from 'react-router-dom'
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

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault()
    setLoading(true)
    setError(null)

    try {
      const { data, error } = await supabase.auth.signInWithPassword({
        email,
        password,
      })

      if (error) throw error

      if (data) {
        navigate('/')
        onSuccess?.()
      }
    } catch (error: any) {
      setError(error.message)
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
        <CloseButton
          onClick={onSuccess}
          color="white"
          bg="#4A90E2"
          _hover={{ bg: '#FF9F43' }}
          size="sm"
        />
      </Box>
      <Stack gap={8}>
        <Heading size="lg" color="#4A90E2">{t('auth.signIn.title')}</Heading>
        {error && (
          <Box p={4} bg="#FF6B6B20" color="#FF6B6B" borderRadius="md" w="100%">
            <Text fontWeight="bold">{t('auth.signIn.error.title')}</Text>
            <Text>{error}</Text>
          </Box>
        )}
        <Box as="form" onSubmit={handleSubmit}>
          <Stack gap={4}>
            <Box>
              <Text mb={2} color="#2D3E50">{t('auth.signIn.email')}</Text>
              <Input
                type="email"
                value={email}
                onChange={(e: React.ChangeEvent<HTMLInputElement>) => setEmail(e.target.value)}
                placeholder={t('auth.signIn.emailPlaceholder')}
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
              <Text mb={2} color="#2D3E50">{t('auth.signIn.password')}</Text>
              <Input
                type="password"
                value={password}
                onChange={(e: React.ChangeEvent<HTMLInputElement>) => setPassword(e.target.value)}
                placeholder={t('auth.signIn.passwordPlaceholder')}
                required
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
              {loading ? t('auth.signIn.button.loading') : t('auth.signIn.button.default')}
            </Button>
          </Stack>
        </Box>
      </Stack>
    </Box>
  )
}
