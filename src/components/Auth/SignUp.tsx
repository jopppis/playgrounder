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
import { supabase } from '../../lib/supabaseClient'

interface SignUpProps {
  onSuccess?: () => void
}

export default function SignUp({ onSuccess }: SignUpProps) {
  const [email, setEmail] = useState('')
  const [password, setPassword] = useState('')
  const [loading, setLoading] = useState(false)
  const [error, setError] = useState<string | null>(null)
  const [success, setSuccess] = useState(false)

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault()
    setLoading(true)
    setError(null)
    setSuccess(false)

    try {
      const { data, error } = await supabase.auth.signUp({
        email,
        password,
        options: {
          emailRedirectTo: window.location.origin + '/signin'
        }
      })

      if (error) throw error

      if (data) {
        setSuccess(true)
        setTimeout(() => {
          onSuccess?.()
        }, 3000)
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
      bg="white"
      color="gray.800"
      borderRadius="xl"
      boxShadow="xl"
      border="1px solid"
      borderColor="gray.200"
    >
      <Box position="absolute" right={2} top={2}>
        <CloseButton onClick={onSuccess} />
      </Box>
      <Stack gap={8}>
        <Heading size="lg" color="gray.800">Sign Up</Heading>
        {error && (
          <Box p={4} bg="red.50" color="red.500" borderRadius="md" w="100%">
            <Text fontWeight="bold">Error</Text>
            <Text>{error}</Text>
          </Box>
        )}
        {success && (
          <Box p={4} bg="green.50" color="green.500" borderRadius="md" w="100%">
            <Text fontWeight="bold">Success!</Text>
            <Text>
              Please check your email for the confirmation link.
              Closing in a moment...
            </Text>
          </Box>
        )}
        <Box as="form" onSubmit={handleSubmit}>
          <Stack gap={4}>
            <Box>
              <Text mb={2} color="gray.700">Email</Text>
              <Input
                type="email"
                value={email}
                onChange={(e) => setEmail(e.target.value)}
                placeholder="Enter your email"
                required
                bg="white"
                color="gray.800"
                borderColor="gray.300"
                _hover={{ borderColor: 'blue.400' }}
                _focus={{ borderColor: 'blue.400', boxShadow: 'outline' }}
                _placeholder={{ color: 'gray.400' }}
              />
            </Box>
            <Box>
              <Text mb={2} color="gray.700">Password</Text>
              <Input
                type="password"
                value={password}
                onChange={(e) => setPassword(e.target.value)}
                placeholder="Enter your password"
                required
                minLength={6}
                bg="white"
                color="gray.800"
                borderColor="gray.300"
                _hover={{ borderColor: 'blue.400' }}
                _focus={{ borderColor: 'blue.400', boxShadow: 'outline' }}
                _placeholder={{ color: 'gray.400' }}
              />
            </Box>
            <Button
              type="submit"
              colorScheme="blue"
              w="100%"
              disabled={loading}
              size="lg"
              _hover={{ transform: 'translateY(-1px)' }}
              transition="all 0.2s"
            >
              {loading ? 'Signing up...' : 'Sign Up'}
            </Button>
          </Stack>
        </Box>
      </Stack>
    </Box>
  )
}
