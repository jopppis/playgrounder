import { Box } from '@chakra-ui/react'
import ChangePassword from './ChangePassword'

interface ChangePasswordModalProps {
  onClose: () => void
}

export default function ChangePasswordModal({ onClose }: ChangePasswordModalProps) {
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
        <ChangePassword onSuccess={onClose} />
      </Box>
    </Box>
  )
}
