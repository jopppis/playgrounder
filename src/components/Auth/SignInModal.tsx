import { Box } from '@chakra-ui/react'
import { useState } from 'react'
import ForgotPasswordModal from './ForgotPasswordModal'
import SignIn from './SignIn'

type SignInModalProps = {
  onClose: () => void
  onMenuClose?: () => void
}

export default function SignInModal({ onClose, onMenuClose }: SignInModalProps) {
  const [showForgotPassword, setShowForgotPassword] = useState(false)

  const handleSignInSuccess = () => {
    onClose()
    onMenuClose?.()
  }

  const handleModalSwitch = () => {
    setShowForgotPassword(true)
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
        borderRadius="md"
        maxW="md"
        w="90%"
        onClick={(e: React.MouseEvent) => e.stopPropagation()}
      >
        {showForgotPassword ? (
          <ForgotPasswordModal
            onClose={() => setShowForgotPassword(false)}
          />
        ) : (
          <SignIn
            onSuccess={handleModalSwitch}
            onSignInSuccess={handleSignInSuccess}
            onClose={onClose}
          />
        )}
      </Box>
    </Box>
  )
}
