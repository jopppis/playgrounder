import {
  Box,
  Button,
  CloseButton,
  Dialog,
  Input,
  Portal,
  Text,
  Textarea,
  useDisclosure
} from '@chakra-ui/react'
import { useState } from 'react'
import { useTranslation } from 'react-i18next'
import { usePlaygroundEdits } from '../../hooks/usePlaygroundEdits'
import { useToast } from '../../hooks/useToast'
import { PlaygroundWithCoordinates } from '../../types/database.types'

interface EditPlaygroundModalProps {
  isOpen: boolean
  onClose: () => void
  playground: PlaygroundWithCoordinates
}

export default function EditPlaygroundModal({ isOpen, onClose, playground }: EditPlaygroundModalProps) {
  const { t } = useTranslation()
  const [proposedName, setProposedName] = useState(playground.name || '')
  const [nameChangeReason, setNameChangeReason] = useState('')
  const [deletionReason, setDeletionReason] = useState('')
  const { proposeNameChange, proposePlaygroundDeletion, loading } = usePlaygroundEdits()
  const toast = useToast()

  // For delete confirmation
  const deleteDialog = useDisclosure()

  const handleNameChangeSubmit = async () => {
    if (proposedName.trim() === '') {
      toast.showError({
        title: t('playground.edit.error.title'),
        description: t('playground.edit.error.emptyName')
      })
      return
    }

    const { error } = await proposeNameChange(
      playground.id,
      proposedName,
      nameChangeReason.trim() || null
    )

    if (error) {
      toast.showError({
        title: t('playground.edit.error.title'),
        description: error
      })
    } else {
      toast.showSuccess({
        title: t('playground.edit.success.title'),
        description: t('playground.edit.success.nameChangeProposed')
      })
      onClose()
    }
  }

  const handleDeleteSubmit = async () => {
    const { error } = await proposePlaygroundDeletion(
      playground.id,
      deletionReason.trim() || null
    )

    if (error) {
      toast.showError({
        title: t('playground.edit.error.title'),
        description: error
      })
    } else {
      toast.showSuccess({
        title: t('playground.edit.success.title'),
        description: t('playground.edit.success.deletionProposed')
      })
      deleteDialog.onClose()
      onClose()
    }
  }

  const handleClose = () => {
    onClose()
  }

  const handleDeleteDialogClose = () => {
    deleteDialog.onClose()
  }

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
                  _hover={{ bg: 'brand.600' }}
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
                      onChange={(e) => setProposedName(e.target.value)}
                      placeholder={t('playground.edit.namePlaceholder')}
                      color="gray.800"
                      borderColor="gray.300"
                      _placeholder={{ color: 'gray.400' }}
                    />
                  </Box>

                  <Box>
                    <Text mb={2} fontWeight="medium" color="gray.700">
                      {t('playground.edit.reasonLabel')}
                    </Text>
                    <Textarea
                      value={nameChangeReason}
                      onChange={(e) => setNameChangeReason(e.target.value)}
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
                      _hover={{ bg: 'red.50' }}
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
                  _hover={{ bg: 'gray.100' }}
                  onClick={handleClose}
                >
                  {t('playground.edit.cancelButton')}
                </Button>
                <Button
                  bg="brand.500"
                  color="white"
                  _hover={{ bg: 'brand.600' }}
                  onClick={handleNameChangeSubmit}
                  disabled={loading}
                >
                  {loading ? (
                    <Box as="span" display="flex" alignItems="center" gap={2}>
                      <Box as="span" w="1em" h="1em" borderRadius="50%" borderWidth="2px" borderStyle="solid" borderColor="white" borderTopColor="transparent" animation="spin 1s linear infinite" />
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
                  _hover={{ bg: 'gray.100' }}
                  onClick={handleDeleteDialogClose}
                >
                  {t('playground.edit.deleteConfirm.cancelButton')}
                </Button>
                <Button
                  bg="red.500"
                  color="white"
                  _hover={{ bg: 'red.600' }}
                  onClick={handleDeleteSubmit}
                  disabled={loading}
                >
                  {loading ? (
                    <Box as="span" display="flex" alignItems="center" gap={2}>
                      <Box as="span" w="1em" h="1em" borderRadius="50%" borderWidth="2px" borderStyle="solid" borderColor="white" borderTopColor="transparent" animation="spin 1s linear infinite" />
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
  )
}
