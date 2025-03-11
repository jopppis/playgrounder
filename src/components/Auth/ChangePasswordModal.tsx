import { Dialog, Portal } from '@chakra-ui/react'
import ChangePassword from './ChangePassword'

interface ChangePasswordModalProps {
  onClose: () => void
  isOpen: boolean
}

export default function ChangePasswordModal({ onClose, isOpen }: ChangePasswordModalProps) {
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
            <ChangePassword onSuccess={onClose} />
          </Dialog.Content>
        </Dialog.Positioner>
      </Portal>
    </Dialog.Root>
  )
}
