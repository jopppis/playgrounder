import { Box } from '@chakra-ui/react'
import ForgotPassword from './ForgotPassword'

interface ForgotPasswordModalProps {
  onClose: () => void
}

export default function ForgotPasswordModal({ onClose }: ForgotPasswordModalProps) {
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
        borderRadius="md"
        maxW="md"
        w="90%"
        onClick={(e: React.MouseEvent) => e.stopPropagation()}
      >
        <ForgotPassword onSuccess={onClose} />
      </Box>
    </Box>
  )
}
