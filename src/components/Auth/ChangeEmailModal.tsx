import { Dialog, Portal } from '@chakra-ui/react';
import ChangeEmail from './ChangeEmail';

interface ChangeEmailModalProps {
  onClose: () => void;
  isOpen: boolean;
}

export default function ChangeEmailModal({ onClose, isOpen }: ChangeEmailModalProps) {
  return (
    <Dialog.Root open={isOpen} onOpenChange={() => onClose()}>
      <Portal>
        <Dialog.Backdrop bg="blackAlpha.600" zIndex={2100} />
        <Dialog.Positioner display="flex" alignItems="center" justifyContent="center" zIndex={2100}>
          <Dialog.Content
            bg="white"
            borderRadius="md"
            maxW="md"
            w="90%"
            onClick={(e: React.MouseEvent) => e.stopPropagation()}
          >
            <ChangeEmail onSuccess={onClose} />
          </Dialog.Content>
        </Dialog.Positioner>
      </Portal>
    </Dialog.Root>
  );
}
