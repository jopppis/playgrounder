import { Dialog, Portal } from '@chakra-ui/react'
import ForgotPassword from './ForgotPassword'

interface ForgotPasswordModalProps {
  onClose: () => void
  isOpen: boolean
}

export default function ForgotPasswordModal({ onClose, isOpen }: ForgotPasswordModalProps) {
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
            <ForgotPassword onSuccess={onClose} />
          </Dialog.Content>
        </Dialog.Positioner>
      </Portal>
    </Dialog.Root>
  )
}
