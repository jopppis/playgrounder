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
  useDisclosure,
} from '@chakra-ui/react';
import { useState } from 'react';
import { useTranslation } from 'react-i18next';
import { MdSupervisorAccount } from 'react-icons/md';
import { usePlaygroundEdits } from '../../hooks/usePlaygroundEdits';
import { useToast } from '../../hooks/useToast';
import { PlaygroundWithCoordinates } from '../../types/database.types';
import { Switch } from '../ui/switch';

interface EditPlaygroundModalProps {
  isOpen: boolean;
  onClose: () => void;
  playground: PlaygroundWithCoordinates;
}

export default function EditPlaygroundModal({
  isOpen,
  onClose,
  playground,
}: EditPlaygroundModalProps) {
  const { t } = useTranslation();
  const [proposedName, setProposedName] = useState(playground.name || '');
  const [editReason, setEditReason] = useState('');
  const [deletionReason, setDeletionReason] = useState('');
  const [hasSupervised, setHasSupervised] = useState<boolean>(playground.has_supervised_activities);
  const [nameModified, setNameModified] = useState(false);
  const [supervisedModified, setSupervisedModified] = useState(false);
  const { proposePlaygroundEdit, proposePlaygroundDeletion, loading } = usePlaygroundEdits();
  const toast = useToast();

  // For delete confirmation
  const deleteDialog = useDisclosure();

  const handleNameChange = (value: string) => {
    setProposedName(value);
    setNameModified(value !== (playground.name || ''));
  };

  const handleSupervisedChange = (value: boolean) => {
    setHasSupervised(value);
    setSupervisedModified(value !== playground.has_supervised_activities);
  };

  const handleEditSubmit = async () => {
    // Check if any changes were made
    if (!nameModified && !supervisedModified) {
      toast.showInfo({
        title: t('playground.edit.noChanges.title'),
        description: t('playground.edit.noChanges.description'),
      });
      return;
    }

    // If name is modified, ensure it's not empty
    if (nameModified && proposedName.trim() === '') {
      toast.showError({
        title: t('playground.edit.error.title'),
        description: t('playground.edit.error.emptyName'),
      });
      return;
    }

    const { error } = await proposePlaygroundEdit(
      playground.id,
      nameModified ? proposedName : null,
      supervisedModified ? hasSupervised : null,
      false,
      editReason.trim() || null,
    );

    if (error) {
      toast.showError({
        title: t('playground.edit.error.title'),
        description: error,
      });
    } else {
      toast.showSuccess({
        title: t('playground.edit.success.title'),
        description: t('playground.edit.success.editProposed'),
      });
      onClose();
    }
  };

  const handleDeleteSubmit = async () => {
    const { error } = await proposePlaygroundDeletion(playground.id, deletionReason.trim() || null);

    if (error) {
      toast.showError({
        title: t('playground.edit.error.title'),
        description: error,
      });
    } else {
      toast.showSuccess({
        title: t('playground.edit.success.title'),
        description: t('playground.edit.success.deletionProposed'),
      });
      deleteDialog.onClose();
      onClose();
    }
  };

  const handleClose = () => {
    onClose();
  };

  const handleDeleteDialogClose = () => {
    deleteDialog.onClose();
  };

  // Check if any changes have been made to enable/disable the submit button
  const hasChanges = nameModified || supervisedModified;

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

      {/* Main Edit Dialog */}
      <Dialog.Root open={isOpen} onOpenChange={() => handleClose()}>
        <Portal>
          <Dialog.Backdrop />
          <Dialog.Positioner>
            <Dialog.Content>
              <Dialog.Header bg="brand.500" color="white" borderTopRadius="md" position="relative">
                <Dialog.Title>{t('playground.edit.title')}</Dialog.Title>
                <CloseButton
                  size="sm"
                  color="white"
                  position="absolute"
                  right="8px"
                  top="8px"
                  onClick={handleClose}
                  bg="brand.500"
                  _hover={{ bg: 'secondary.500' }}
                />
              </Dialog.Header>
              <Dialog.Body py={4} bg="white">
                <Box display="flex" flexDirection="column" gap={4}>
                  <Text color="gray.700" fontWeight="medium">
                    {t('playground.edit.description')}
                  </Text>

                  <Box>
                    <Text mb={2} fontWeight="medium" color="gray.700">
                      {t('playground.edit.nameLabel')}
                    </Text>
                    <Input
                      value={proposedName}
                      onChange={(e) => handleNameChange(e.target.value)}
                      placeholder={t('playground.edit.namePlaceholder')}
                      color="gray.800"
                      borderColor={nameModified ? 'brand.500' : 'gray.300'}
                      _placeholder={{ color: 'gray.400' }}
                    />
                    {nameModified && (
                      <Text fontSize="xs" color="brand.500" mt={1}>
                        {t('playground.edit.fieldModified')}
                      </Text>
                    )}
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
                        onClick={() => handleSupervisedChange(!hasSupervised)}
                      >
                        <Switch
                          size="md"
                          checked={hasSupervised}
                          onCheckedChange={() => {}}
                          aria-label={t('playground.supervision.label')}
                        />
                      </Box>
                    </HStack>
                    <Text
                      fontSize="xs"
                      color={supervisedModified ? 'brand.500' : 'gray.500'}
                      mt={1}
                    >
                      {hasSupervised
                        ? t('playground.supervision.supervised')
                        : t('playground.supervision.unsupervised')}
                      {supervisedModified && ` (${t('playground.edit.fieldModified')})`}
                    </Text>
                  </Box>

                  <Box>
                    <Text mb={2} fontWeight="medium" color="gray.700">
                      {t('playground.edit.reasonLabel')}
                    </Text>
                    <Textarea
                      value={editReason}
                      onChange={(e) => setEditReason(e.target.value)}
                      placeholder={t('playground.edit.reasonPlaceholder')}
                      color="gray.800"
                      borderColor="gray.300"
                      _placeholder={{ color: 'gray.400' }}
                      rows={3}
                    />
                  </Box>

                  <Box pt={2}>
                    <Button
                      variant="outline"
                      bg="white"
                      color="red.500"
                      borderColor="red.500"
                      _hover={{
                        bg: 'red.50',
                        transform: 'translateY(-2px)',
                      }}
                      _active={{
                        bg: 'white',
                        transform: 'translateY(0)',
                      }}
                      transition="all 0.2s"
                      size="sm"
                      onClick={deleteDialog.onOpen}
                    >
                      {t('playground.edit.deleteButton')}
                    </Button>
                  </Box>
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
                  onClick={handleClose}
                >
                  {t('playground.edit.cancelButton')}
                </Button>
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
                  onClick={handleEditSubmit}
                  disabled={loading || !hasChanges}
                  opacity={!hasChanges ? 0.6 : 1}
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
                      {t('playground.edit.submitButton')}
                    </Box>
                  ) : (
                    t('playground.edit.submitButton')
                  )}
                </Button>
              </Dialog.Footer>
            </Dialog.Content>
          </Dialog.Positioner>
        </Portal>
      </Dialog.Root>

      {/* Delete Confirmation Dialog */}
      <Dialog.Root open={deleteDialog.open} onOpenChange={() => handleDeleteDialogClose()}>
        <Portal>
          <Dialog.Backdrop />
          <Dialog.Positioner>
            <Dialog.Content>
              <Dialog.Header bg="red.500" color="white" borderTopRadius="md" position="relative">
                <Dialog.Title>{t('playground.edit.deleteConfirm.title')}</Dialog.Title>
                <CloseButton
                  size="sm"
                  color="white"
                  position="absolute"
                  right="8px"
                  top="8px"
                  onClick={handleDeleteDialogClose}
                  bg="red.500"
                  _hover={{ bg: 'red.600' }}
                />
              </Dialog.Header>
              <Dialog.Body py={4} bg="white">
                <Text color="gray.700" fontWeight="medium">
                  {t('playground.edit.deleteConfirm.message')}
                </Text>
                <Text fontWeight="bold" mt={2} color="gray.800">
                  {playground.name || t('playground.unnamed')}
                </Text>

                <Box mt={4}>
                  <Text mb={2} fontWeight="medium" color="gray.700">
                    {t('playground.edit.deleteConfirm.reasonLabel')}
                  </Text>
                  <Textarea
                    value={deletionReason}
                    onChange={(e) => setDeletionReason(e.target.value)}
                    placeholder={t('playground.edit.deleteConfirm.reasonPlaceholder')}
                    color="gray.800"
                    borderColor="gray.300"
                    _placeholder={{ color: 'gray.400' }}
                    rows={3}
                  />
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
                  onClick={handleDeleteDialogClose}
                >
                  {t('playground.edit.deleteConfirm.cancelButton')}
                </Button>
                <Button
                  bg="red.500"
                  color="white"
                  border="1px solid"
                  borderColor="red.500"
                  _hover={{
                    bg: 'red.600',
                    transform: 'translateY(-2px)',
                  }}
                  _active={{
                    bg: 'red.500',
                    transform: 'translateY(0)',
                  }}
                  transition="all 0.2s"
                  onClick={handleDeleteSubmit}
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
                      {t('playground.edit.deleteConfirm.confirmButton')}
                    </Box>
                  ) : (
                    t('playground.edit.deleteConfirm.confirmButton')
                  )}
                </Button>
              </Dialog.Footer>
            </Dialog.Content>
          </Dialog.Positioner>
        </Portal>
      </Dialog.Root>
    </>
  );
}
