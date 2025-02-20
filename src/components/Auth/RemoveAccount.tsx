import {
  Box,
  Button,
  Heading,
  Stack,
  Text,
} from '@chakra-ui/react'
import { useState } from 'react'
import { useTranslation } from 'react-i18next'
import { useNavigate } from 'react-router-dom'
import { useToast } from '../../hooks/useToast'
import { supabase } from '../../lib/supabaseClient'

interface RemoveAccountProps {
  onClose: () => void
}

export default function RemoveAccount({ onClose }: RemoveAccountProps) {
  const { t } = useTranslation()
  const navigate = useNavigate()
  const [loading, setLoading] = useState(false)
  const toast = useToast()

  const handleDelete = async () => {
    setLoading(true)

    try {
      const { error: deleteError } = await supabase.rpc('delete_user')

      if (deleteError) throw deleteError

      toast.showSuccess({
        title: t('auth.removeAccount.success.title'),
        description: t('auth.removeAccount.success.message')
      })

      // Sign out after successful deletion
      await supabase.auth.signOut()
      navigate('/')
      onClose()
    } catch (err) {
      const error = err as Error
      toast.showError({
        title: t('auth.removeAccount.error.title'),
        description: t('auth.removeAccount.error.message')
      })
      console.error('Error deleting account:', error.message)
    } finally {
      setLoading(false)
    }
  }

  return (
    <Box
      position="fixed"
      top={0}
      left={0}
      right={0}
      bottom={0}
      bg="blackAlpha.600"
      zIndex={2100}
      display="flex"
      alignItems="center"
      justifyContent="center"
      onClick={onClose}
    >
      <Box
        bg="white"
        borderRadius="xl"
        maxW="md"
        w="90%"
        p={6}
        onClick={(e: React.MouseEvent) => e.stopPropagation()}
      >
        <Stack gap={6}>
          <Heading size="lg" color="gray.700">
            {t('auth.removeAccount.confirmTitle')}
          </Heading>
          <Text color="gray.600">
            {t('auth.removeAccount.confirmMessage')}
          </Text>
          <Stack direction="row" gap={4} justifyContent="flex-end">
            <Button
              variant="outline"
              onClick={onClose}
              borderColor="brand.500"
              color="brand.500"
              _hover={{
                bg: 'brand.50'
              }}
            >
              {t('auth.removeAccount.cancelButton')}
            </Button>
            <Button
              bg="red.500"
              color="white"
              onClick={handleDelete}
              disabled={loading}
              _hover={{
                bg: 'red.600'
              }}
            >
              {t('auth.removeAccount.confirmButton')}
            </Button>
          </Stack>
        </Stack>
      </Box>
    </Box>
  )
}
