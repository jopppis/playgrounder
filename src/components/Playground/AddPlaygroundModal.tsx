import {
  Box,
  Button,
  CloseButton,
  Dialog,
  Flex,
  HStack,
  Input,
  Portal,
  Text,
  Textarea,
} from '@chakra-ui/react';
import { useState } from 'react';
import { useTranslation } from 'react-i18next';
import { MdSupervisorAccount } from 'react-icons/md';
import { usePlaygroundEdits } from '../../hooks/usePlaygroundEdits';
import { useToast } from '../../hooks/useToast';
import { Switch } from '../ui/switch';

interface AddPlaygroundModalProps {
  isOpen: boolean;
  onClose: (name: string, hasSupervised: boolean) => void;
  onCancel: () => void;
  location: { lat: number; lng: number } | null;
  onLocationSelect: () => void;
}

export default function AddPlaygroundModal({
  isOpen,
  onClose,
  onCancel,
  location,
  onLocationSelect,
}: AddPlaygroundModalProps) {
  const { t } = useTranslation();
  const [name, setName] = useState('');
  const [reason, setReason] = useState('');
  const [hasSupervised, setHasSupervised] = useState(false);
  const { proposePlaygroundEdit, loading } = usePlaygroundEdits();
  const toast = useToast();

  const resetForm = () => {
    setName('');
    setReason('');
    setHasSupervised(false);
  };

  const handleSubmit = async () => {
    if (!location) {
      toast.showError({
        title: t('playground.add.error.title'),
        description: t('playground.add.error.noLocation'),
      });
      return;
    }

    if (!name.trim()) {
      toast.showError({
        title: t('playground.add.error.title'),
        description: t('playground.add.error.emptyName'),
      });
      return;
    }

    const { error } = await proposePlaygroundEdit(
      null, // No original_id for new playgrounds
      name,
      hasSupervised,
      true,
      reason.trim() || null,
      location,
    );

    if (error) {
      toast.showError({
        title: t('playground.add.error.title'),
        description: error,
      });
    } else {
      toast.showSuccess({
        title: t('playground.add.success.title'),
        description: t('playground.add.success.message'),
      });
      resetForm();
      onClose(name, hasSupervised);
    }
  };

  const handleCancel = () => {
    resetForm();
    onCancel();
  };

  return (
    <>
      {/* Add spin animation */}
      <style>
        {`
          @keyframes spin {
            0% { transform: rotate(0deg); }
            100% { transform: rotate(360deg); }
          }
        `}
      </style>

      <Dialog.Root open={isOpen} onOpenChange={() => handleCancel()}>
        <Portal>
          <Dialog.Backdrop />
          <Dialog.Positioner>
            <Dialog.Content>
              <Dialog.Header bg="brand.500" color="white" borderTopRadius="md" position="relative">
                <Dialog.Title>{t('playground.add.title')}</Dialog.Title>
                <CloseButton
                  size="sm"
                  color="white"
                  position="absolute"
                  right="8px"
                  top="8px"
                  onClick={handleCancel}
                  bg="brand.500"
                  _hover={{ bg: 'secondary.500' }}
                />
              </Dialog.Header>
              <Dialog.Body py={4} bg="white">
                <Box display="flex" flexDirection="column" gap={4}>
                  {!location ? (
                    <>
                      <Text color="gray.700" fontWeight="medium">
                        {t('playground.add.selectLocation')}
                      </Text>
                      <Button
                        bg="brand.500"
                        color="white"
                        border="1px solid"
                        borderColor="brand.500"
                        _hover={{
                          bg: 'secondary.500',
                          transform: 'translateY(-2px)',
                          borderColor: 'secondary.500',
                        }}
                        _active={{
                          bg: 'brand.500',
                          transform: 'translateY(0)',
                        }}
                        transition="all 0.2s"
                        onClick={onLocationSelect}
                      >
                        {t('playground.add.selectLocationButton')}
                      </Button>
                    </>
                  ) : (
                    <>
                      <Box>
                        <Text mb={2} fontWeight="medium" color="gray.700">
                          {t('playground.add.nameLabel')}
                        </Text>
                        <Input
                          value={name}
                          onChange={(e) => setName(e.target.value)}
                          placeholder={t('playground.add.namePlaceholder')}
                          color="gray.800"
                          borderColor="gray.300"
                          _placeholder={{ color: 'gray.400' }}
                        />
                      </Box>

                      {/* Supervised Activities Switch */}
                      <Box>
                        <HStack gap={2} align="center" justify="space-between" w="100%">
                          <Flex align="center" gap={2}>
                            <Box as={MdSupervisorAccount} boxSize="20px" color="gray.600" />
                            <Text fontSize="sm" fontWeight="medium" color="gray.700">
                              {t('playground.supervision.label')}
                            </Text>
                          </Flex>
                          <Box
                            position="relative"
                            zIndex={1}
                            cursor="pointer"
                            onClick={() => setHasSupervised(!hasSupervised)}
                          >
                            <Switch
                              size="md"
                              checked={hasSupervised}
                              onCheckedChange={() => {}}
                              aria-label={t('playground.supervision.label')}
                            />
                          </Box>
                        </HStack>
                        <Text fontSize="xs" color="gray.500" mt={1}>
                          {hasSupervised
                            ? t('playground.supervision.supervised')
                            : t('playground.supervision.unsupervised')}
                        </Text>
                      </Box>

                      <Box>
                        <Text mb={2} fontWeight="medium" color="gray.700">
                          {t('playground.add.reasonLabel')}
                        </Text>
                        <Textarea
                          value={reason}
                          onChange={(e) => setReason(e.target.value)}
                          placeholder={t('playground.add.reasonPlaceholder')}
                          color="gray.800"
                          borderColor="gray.300"
                          _placeholder={{ color: 'gray.400' }}
                          rows={3}
                        />
                      </Box>
                    </>
                  )}
                </Box>
              </Dialog.Body>
              <Dialog.Footer bg="gray.50" borderBottomRadius="md">
                <Button
                  variant="outline"
                  mr={3}
                  bg="white"
                  color="gray.700"
                  borderColor="gray.300"
                  _hover={{
                    bg: 'gray.100',
                    transform: 'translateY(-2px)',
                  }}
                  _active={{
                    bg: 'white',
                    transform: 'translateY(0)',
                  }}
                  transition="all 0.2s"
                  onClick={handleCancel}
                >
                  {t('playground.add.cancelButton')}
                </Button>
                {location && (
                  <Button
                    bg="brand.500"
                    color="white"
                    border="1px solid"
                    borderColor="brand.500"
                    _hover={{
                      bg: 'secondary.500',
                      transform: 'translateY(-2px)',
                      borderColor: 'secondary.500',
                    }}
                    _active={{
                      bg: 'brand.500',
                      transform: 'translateY(0)',
                    }}
                    transition="all 0.2s"
                    onClick={handleSubmit}
                    disabled={loading}
                  >
                    {loading ? (
                      <Box as="span" display="flex" alignItems="center" gap={2}>
                        <Box
                          as="span"
                          w="1em"
                          h="1em"
                          borderRadius="50%"
                          borderWidth="2px"
                          borderStyle="solid"
                          borderColor="white"
                          borderTopColor="transparent"
                          animation="spin 1s linear infinite"
                        />
                        {t('playground.add.submitButton')}
                      </Box>
                    ) : (
                      t('playground.add.submitButton')
                    )}
                  </Button>
                )}
              </Dialog.Footer>
            </Dialog.Content>
          </Dialog.Positioner>
        </Portal>
      </Dialog.Root>
    </>
  );
}
