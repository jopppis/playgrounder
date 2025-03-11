import { Dialog, Portal } from '@chakra-ui/react'
import { useState } from 'react'
import ForgotPassword from './ForgotPassword'
import SignIn from './SignIn'

type SignInModalProps = {
  onClose: () => void
  onMenuClose?: () => void
  isOpen: boolean
}

export default function SignInModal({ onClose, onMenuClose, isOpen }: SignInModalProps) {
  const [showForgotPassword, setShowForgotPassword] = useState(false)

  const handleSignInSuccess = () => {
    onClose()
    onMenuClose?.()
  }

  const handleModalSwitch = () => {
    setShowForgotPassword(true)
  }

  const handleForgotPasswordClose = () => {
    setShowForgotPassword(false)
  }

  return (
    <Dialog.Root open={isOpen} onOpenChange={() => onClose()}>
      <Portal>
        <Dialog.Backdrop bg="blackAlpha.600" />
        <Dialog.Positioner display="flex" alignItems="center" justifyContent="center">
          <Dialog.Content
            bg="white"
            borderRadius="md"
            maxW="md"
            w="90%"
            onClick={(e: React.MouseEvent) => e.stopPropagation()}
          >
            {showForgotPassword ? (
              <ForgotPassword onSuccess={handleForgotPasswordClose} />
            ) : (
              <SignIn
                onSuccess={handleModalSwitch}
                onSignInSuccess={handleSignInSuccess}
                onClose={onClose}
              />
            )}
          </Dialog.Content>
        </Dialog.Positioner>
      </Portal>
    </Dialog.Root>
  )
}
