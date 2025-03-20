import { Button, Dialog, Heading, Portal, Stack, Text } from '@chakra-ui/react';
import { useState } from 'react';
import { useTranslation } from 'react-i18next';
import { useNavigate } from 'react-router-dom';
import { useToast } from '../../hooks/useToast';
import { supabase } from '../../lib/supabaseClient';

interface RemoveAccountProps {
  onClose: () => void;
  isOpen: boolean;
}

export default function RemoveAccount({ onClose, isOpen }: RemoveAccountProps) {
  const { t } = useTranslation();
  const navigate = useNavigate();
  const [loading, setLoading] = useState(false);
  const toast = useToast();

  const handleDelete = async () => {
    setLoading(true);

    try {
      const { error: deleteError } = await supabase.rpc('delete_user');

      if (deleteError) throw deleteError;

      toast.showSuccess({
        title: t('auth.removeAccount.success.title'),
        description: t('auth.removeAccount.success.message'),
      });

      // Sign out after successful deletion
      await supabase.auth.signOut();
      navigate('/');
      onClose();
    } catch (err) {
      const error = err as Error;
      toast.showError({
        title: t('auth.removeAccount.error.title'),
        description: t('auth.removeAccount.error.message'),
      });
      console.error('Error deleting account:', error.message);
    } finally {
      setLoading(false);
    }
  };

  return (
    <Dialog.Root open={isOpen} onOpenChange={() => onClose()}>
      <Portal>
        <Dialog.Backdrop bg="blackAlpha.600" />
        <Dialog.Positioner display="flex" alignItems="center" justifyContent="center">
          <Dialog.Content
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
              <Text color="gray.600">{t('auth.removeAccount.confirmMessage')}</Text>
              <Stack direction="row" gap={4} justifyContent="flex-end">
                <Button
                  variant="solid"
                  onClick={onClose}
                  bg="brand.500"
                  color="white"
                  _hover={{
                    bg: 'secondary.500',
                    transform: 'translateY(-2px)',
                  }}
                  _active={{
                    bg: 'brand.500',
                    transform: 'translateY(0)',
                  }}
                  transition="all 0.2s"
                >
                  {t('auth.removeAccount.cancelButton')}
                </Button>
                <Button
                  bg="red.500"
                  color="white"
                  onClick={handleDelete}
                  disabled={loading}
                  _hover={{
                    bg: 'red.600',
                  }}
                >
                  {t('auth.removeAccount.confirmButton')}
                </Button>
              </Stack>
            </Stack>
          </Dialog.Content>
        </Dialog.Positioner>
      </Portal>
    </Dialog.Root>
  );
}
