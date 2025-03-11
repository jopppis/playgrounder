import {
  Box,
  Button,
  Flex,
  Grid,
  GridItem,
  Heading,
  Icon,
  Link,
  Text,
  Textarea
} from '@chakra-ui/react'
import { useState } from 'react'
import { useTranslation } from 'react-i18next'
import { FaArrowLeft, FaCheck, FaTimes } from 'react-icons/fa'
import { EditProposalWithPlayground, useAdminEditProposals } from '../../hooks/useAdminEditProposals'
import { usePlaygrounds } from '../../hooks/usePlaygrounds'

interface ProposalDetailProps {
  proposal: EditProposalWithPlayground
  onBack: () => void
  onNavigateToPlayground?: (latitude: number, longitude: number) => void
  onProposalAction?: () => Promise<void>
}

export default function ProposalDetail({ proposal, onBack, onNavigateToPlayground, onProposalAction }: ProposalDetailProps) {
  const { t } = useTranslation()
  const { approveProposal, rejectProposal, revertEdit } = useAdminEditProposals()
  const { refreshPlaygrounds } = usePlaygrounds()
  const [adminNotes, setAdminNotes] = useState('')
  const [loading, setLoading] = useState(false)

  const handleApprove = async () => {
    setLoading(true)
    await approveProposal(proposal.id, adminNotes)
    if (onProposalAction) {
      await onProposalAction()
    }
    await refreshPlaygrounds(null, 0)
    setLoading(false)
    onBack()
  }

  const handleReject = async () => {
    if (!adminNotes.trim()) {
      alert(t('admin.proposals.requireNotes'))
      return
    }
    setLoading(true)
    await rejectProposal(proposal.id, adminNotes)
    if (onProposalAction) {
      await onProposalAction()
    }
    await refreshPlaygrounds(null, 0)
    setLoading(false)
    onBack()
  }

  const handleRevert = async () => {
    if (!proposal.edit?.id) return
    setLoading(true)
    await revertEdit(proposal.edit.id)
    if (onProposalAction) {
      await onProposalAction()
    }
    await refreshPlaygrounds(null, 0)
    setLoading(false)
    onBack()
  }

  const handleNavigateToPlayground = () => {
    if (!onNavigateToPlayground) return

    if (proposal.playground_id) {
      onNavigateToPlayground(proposal.playground.latitude, proposal.playground.longitude)
    }
  }

  const formatDate = (dateString: string) => {
    const date = new Date(dateString)
    return new Intl.DateTimeFormat('default', {
      year: 'numeric',
      month: 'short',
      day: 'numeric',
      hour: '2-digit',
      minute: '2-digit'
    }).format(date)
  }

  const getStatusColor = (status: string) => {
    switch (status) {
      case 'pending':
        return 'secondary.500'
      case 'approved':
        return 'green.500'
      case 'rejected':
        return 'red.500'
      case 'reverted':
        return 'gray.500'
      default:
        return 'gray.500'
    }
  }

  const getProposalType = () => {
    if (proposal.delete_playground) {
      return t('admin.proposals.type.deletion')
    }
    if (proposal.is_new_playground) {
      return t('admin.proposals.type.new')
    }
    return t('admin.proposals.type.dataUpdate')
  }

  const getProposalTypeColor = () => {
    if (proposal.delete_playground) {
      return 'red.500'
    }
    if (proposal.is_new_playground) {
      return 'green.500'
    }
    return 'blue.500'
  }

  const getProposalStatusBg = (status: string, isReverted: boolean) => {
    if (isReverted || status === 'reverted') return 'gray.50'
    switch (status) {
      case 'approved':
        return 'green.50'
      case 'rejected':
        return 'red.50'
      default:
        return 'gray.50'
    }
  }

  const getProposalStatusColor = (status: string, isReverted: boolean) => {
    if (isReverted || status === 'reverted') return 'gray.700'
    switch (status) {
      case 'approved':
        return 'green.700'
      case 'rejected':
        return 'red.700'
      default:
        return 'gray.700'
    }
  }

  return (
    <Box height="100%" display="flex" flexDirection="column" overflow="hidden">
      <Flex align="center" flex="0 0 auto" bg="white" borderBottomWidth="1px" borderColor="brand.100" py={3} px={4}>
        <Button
          onClick={onBack}
          variant="solid"
          mr={4}
          bg="brand.500"
          color="white"
          border="1px solid"
          borderColor="brand.500"
          _hover={{
            bg: 'secondary.500',
            transform: 'translateY(-2px)',
            borderColor: 'secondary.500'
          }}
          _active={{
            bg: 'brand.500',
            transform: 'translateY(0)'
          }}
          transition="all 0.2s"
        >
          <Icon as={FaArrowLeft} mr={2} />
          {t('admin.proposals.backToList')}
        </Button>
        <Heading size="md" color="brand.900">{t('admin.proposals.detailTitle')}</Heading>
      </Flex>

      <Box flex="1 1 auto" overflowY="auto" px={4} py={4} minHeight={0}>
        <Grid templateColumns={{ base: '1fr', md: 'repeat(2, 1fr)' }} gap={6}>
          <GridItem>
            <Box p={4} borderWidth="1px" borderColor="brand.200" borderRadius="md" h="100%">
              <Heading size="md" mb={4} color="brand.900">{t('admin.proposals.proposalDetails')}</Heading>

              <Flex direction="column" gap={3}>
                <Flex justify="space-between">
                  <Text fontWeight="bold" color="gray.700">{t('admin.proposals.table.date')}</Text>
                  <Text color="gray.700">{formatDate(proposal.created_at)}</Text>
                </Flex>

                <Flex justify="space-between">
                  <Text fontWeight="bold" color="gray.700">{t('admin.proposals.requestor')}</Text>
                  <Text color="gray.700" fontFamily="mono" fontSize="sm">
                    {proposal.user_id}
                  </Text>
                </Flex>

                <Flex justify="space-between">
                  <Text fontWeight="bold" color="gray.700">{t('admin.proposals.table.status')}</Text>
                  <Text color={getStatusColor(proposal.edit?.reverted_at ? 'reverted' : proposal.status)}>
                    {t(`admin.proposals.status.${proposal.edit?.reverted_at ? 'reverted' : proposal.status}`)}
                  </Text>
                </Flex>

                <Flex justify="space-between">
                  <Text fontWeight="bold" color="gray.700">{t('admin.proposals.table.type')}</Text>
                  <Text color={getProposalTypeColor()}>
                    {getProposalType()}
                  </Text>
                </Flex>

                {proposal.delete_playground && (
                  <Flex justify="space-between">
                    <Text fontWeight="bold" color="gray.700">{t('admin.proposals.deleteRequest')}</Text>
                    <Text color="red.500">{t('admin.proposals.requestedDeletion')}</Text>
                  </Flex>
                )}

                {proposal.is_new_playground && (
                  <Flex justify="space-between">
                    <Text fontWeight="bold" color="gray.700">{t('admin.proposals.location')}</Text>
                    {(proposal.status as string) === 'approved' && !proposal.edit?.reverted_at && (
                      <Link
                        color="brand.500"
                        _hover={{ color: 'secondary.500', textDecoration: 'underline', cursor: 'pointer' }}
                        onClick={handleNavigateToPlayground}
                      >
                        {t('admin.proposals.viewOnMap')}
                      </Link>
                    )}
                  </Flex>
                )}

                <Box>
                  <Text fontWeight="bold" mb={1} color="gray.700">{t('admin.proposals.reason')}</Text>
                  <Box p={2} bg="gray.50" borderRadius="md">
                    <Text color="gray.700">{proposal.reason || t('admin.proposals.noReasonProvided')}</Text>
                  </Box>
                </Box>
              </Flex>
            </Box>
          </GridItem>

          <GridItem>
            <Box p={4} borderWidth="1px" borderColor="brand.200" borderRadius="md" h="100%">
              <Heading size="md" mb={4} color="brand.900">
                {proposal.playground_id
                  ? t('admin.proposals.playgroundDetails')
                  : t('admin.proposals.newPlayground')}
              </Heading>

              <Flex direction="column" gap={3}>
                <Flex justify="space-between">
                  <Text fontWeight="bold" color="gray.700">{t('playground.name')}</Text>
                  {proposal.playground_id ? (
                    <Link
                      color="brand.500"
                      _hover={{ color: 'secondary.500', textDecoration: 'underline', cursor: 'pointer' }}
                      onClick={handleNavigateToPlayground}
                    >
                      {proposal.playground?.name || t('playground.unnamed')}
                    </Link>
                  ) : (
                    <Text color="gray.700">
                      {proposal.proposed_name || t('playground.unnamed')}
                    </Text>
                  )}
                </Flex>

                {proposal.playground_id && proposal.playground?.city && (
                  <Flex justify="space-between">
                    <Text fontWeight="bold" color="gray.700">{t('city')}</Text>
                    <Text color="gray.700">{proposal.playground.city}</Text>
                  </Flex>
                )}

                <Flex justify="space-between">
                  <Text fontWeight="bold" color="gray.700">{t('playground.supervision.label')}</Text>
                  <Text color="gray.700">
                    {proposal.has_supervised_activities !== null
                      ? (proposal.has_supervised_activities
                          ? t('playground.supervision.supervised')
                          : t('playground.supervision.unsupervised'))
                      : (proposal.playground?.has_supervised_activities
                          ? t('playground.supervision.supervised')
                          : t('playground.supervision.unsupervised'))}
                  </Text>
                </Flex>

                {proposal.playground_id && proposal.playground?.data_source && (
                  <Flex justify="space-between">
                    <Text fontWeight="bold" color="gray.700">{t('playground.dataSource.label')}</Text>
                    <Text color="gray.700">
                      {proposal.playground.data_source
                        ? t(`playground.dataSource.${proposal.playground.data_source}`)
                        : '-'}
                    </Text>
                  </Flex>
                )}
              </Flex>
            </Box>
          </GridItem>
        </Grid>

        <Box mt={6} p={4} borderWidth="1px" borderColor="brand.200" borderRadius="md" mb={4}>
          <Heading size="md" mb={4} color="brand.900">{t('admin.proposals.proposedChanges')}</Heading>

          {proposal.status === 'pending' ? (
            <Box>
              {proposal.proposed_name !== null && proposal.playground_id && (
                <Box mb={4} p={4} borderWidth="1px" borderColor="brand.200" borderRadius="md">
                  <Heading size="sm" mb={2} color="brand.900">{t('playground.name')}</Heading>
                  <Grid templateColumns="1fr 1fr" gap={4}>
                    <Box p={3} bg="gray.50" borderRadius="md">
                      <Text fontWeight="bold" mb={1} color="gray.700">{t('admin.proposals.current')}</Text>
                      <Text color="gray.700">{proposal.playground?.name || t('playground.unnamed')}</Text>
                    </Box>
                    <Box p={3} bg={getProposalStatusBg(proposal.status, Boolean(proposal.edit?.reverted_at))} borderRadius="md">
                      <Text fontWeight="bold" mb={1} color="gray.700">{t('admin.proposals.proposed')}</Text>
                      <Text color="gray.700">{proposal.proposed_name}</Text>
                      {proposal.edit?.reverted_at && (
                        <Text color="gray.500" fontSize="sm" mt={2} fontStyle="italic">
                          {t('admin.proposals.status.reverted')}
                        </Text>
                      )}
                    </Box>
                  </Grid>
                </Box>
              )}

              {proposal.has_supervised_activities !== null && proposal.playground_id && (
                <Box mb={4} p={4} borderWidth="1px" borderColor="brand.200" borderRadius="md">
                  <Heading size="sm" mb={2} color="brand.900">{t('playground.supervision.label')}</Heading>
                  <Grid templateColumns="1fr 1fr" gap={4}>
                    <Box p={3} bg="gray.50" borderRadius="md">
                      <Text fontWeight="bold" mb={1} color="gray.700">{t('admin.proposals.current')}</Text>
                      <Text color="gray.700">
                        {proposal.playground?.has_supervised_activities
                          ? t('playground.supervision.supervised')
                          : t('playground.supervision.unsupervised')}
                      </Text>
                    </Box>
                    <Box p={3} bg={getProposalStatusBg(proposal.status, Boolean(proposal.edit?.reverted_at))} borderRadius="md">
                      <Text fontWeight="bold" mb={1} color="gray.700">{t('admin.proposals.proposed')}</Text>
                      <Text color="gray.700">
                        {proposal.has_supervised_activities
                          ? t('playground.supervision.supervised')
                          : t('playground.supervision.unsupervised')}
                      </Text>
                      {proposal.edit?.reverted_at && (
                        <Text color="gray.500" fontSize="sm" mt={2} fontStyle="italic">
                          {t('admin.proposals.status.reverted')}
                        </Text>
                      )}
                    </Box>
                  </Grid>
                </Box>
              )}

              {proposal.is_new_playground && (
                <Box mb={4} p={4} borderWidth="1px" borderColor="brand.200" borderRadius="md">
                  <Heading size="sm" mb={2} color="brand.900">{t('admin.proposals.newPlayground')}</Heading>
                  <Grid templateColumns="1fr" gap={4}>
                    <Box p={3} bg={getProposalStatusBg(proposal.status, Boolean(proposal.edit?.reverted_at))} borderRadius="md">
                      <Flex direction="column" gap={3}>
                        <Box>
                          <Text fontWeight="bold" mb={1} color="gray.700">{t('playground.name')}</Text>
                          <Text color="gray.700">{proposal.proposed_name || t('playground.unnamed')}</Text>
                        </Box>
                        <Box>
                          <Text fontWeight="bold" mb={1} color="gray.700">{t('playground.supervision.label')}</Text>
                          <Text color="gray.700">
                            {proposal.has_supervised_activities
                              ? t('playground.supervision.supervised')
                              : t('playground.supervision.unsupervised')}
                          </Text>
                        </Box>
                        <Box>
                          <Text fontWeight="bold" mb={1} color="gray.700">{t('admin.proposals.location')}</Text>
                          {(proposal.status as string) === 'approved' && !proposal.edit?.reverted_at && (
                            <Link
                              color="brand.500"
                              _hover={{ color: 'secondary.500', textDecoration: 'underline', cursor: 'pointer' }}
                              onClick={handleNavigateToPlayground}
                            >
                              {t('admin.proposals.viewOnMap')}
                            </Link>
                          )}
                        </Box>
                      </Flex>
                    </Box>
                  </Grid>
                </Box>
              )}

              {proposal.delete_playground && (
                <Box mb={4} p={4} borderWidth="1px" borderColor="red.100" bg="red.50" borderRadius="md">
                  <Heading size="sm" mb={2} color="red.700">{t('admin.proposals.deletionWarning')}</Heading>
                  <Text color="red.700">{t('admin.proposals.deletionExplanation')}</Text>
                </Box>
              )}

              <Box mb={4}>
                <Text fontWeight="bold" mb={2} color="gray.700">{t('admin.proposals.adminNotes')}</Text>
                <Textarea
                  value={adminNotes}
                  onChange={(e) => setAdminNotes(e.target.value)}
                  placeholder={t('admin.proposals.notesPlaceholder')}
                  rows={4}
                  color="gray.700"
                  bg="white"
                  borderColor="brand.200"
                  _placeholder={{ color: 'gray.400' }}
                  _hover={{ borderColor: "brand.300" }}
                  _focus={{
                    borderColor: "brand.500",
                    boxShadow: "0 0 0 1px var(--chakra-colors-brand-500)"
                  }}
                />
              </Box>

              <Flex gap={4} justify="flex-end">
                <Button
                  onClick={handleReject}
                  bg="red.500"
                  color="white"
                  border="1px solid"
                  borderColor="red.500"
                  disabled={loading}
                  _hover={{
                    bg: 'red.600',
                    transform: 'translateY(-2px)'
                  }}
                  _active={{
                    bg: 'red.500',
                    transform: 'translateY(0)'
                  }}
                  transition="all 0.2s"
                >
                  <Icon as={FaTimes} mr={2} />
                  {t('admin.proposals.reject')}
                </Button>
                <Button
                  onClick={handleApprove}
                  bg="brand.500"
                  color="white"
                  border="1px solid"
                  borderColor="brand.500"
                  disabled={loading}
                  _hover={{
                    bg: 'secondary.500',
                    transform: 'translateY(-2px)',
                    borderColor: 'secondary.500'
                  }}
                  _active={{
                    bg: 'brand.500',
                    transform: 'translateY(0)'
                  }}
                  transition="all 0.2s"
                >
                  <Icon as={FaCheck} mr={2} />
                  {t('admin.proposals.approve')}
                </Button>
              </Flex>
            </Box>
          ) : (
            <Flex direction="column" gap={4}>
              {proposal.proposed_name !== null && proposal.playground_id && (
                <Box mb={4} p={4} borderWidth="1px" borderColor="brand.200" borderRadius="md">
                  <Heading size="sm" mb={2} color="brand.900">{t('playground.name')}</Heading>
                  <Grid templateColumns="1fr 1fr" gap={4}>
                    <Box p={3} bg="gray.50" borderRadius="md">
                      <Text fontWeight="bold" mb={1} color="gray.700">{t('admin.proposals.current')}</Text>
                      <Text color="gray.700">{proposal.playground?.name || t('playground.unnamed')}</Text>
                    </Box>
                    <Box p={3} bg={getProposalStatusBg(proposal.status, Boolean(proposal.edit?.reverted_at))} borderRadius="md">
                      <Text fontWeight="bold" mb={1} color="gray.700">{t('admin.proposals.proposed')}</Text>
                      <Text color="gray.700">{proposal.proposed_name}</Text>
                      {proposal.edit?.reverted_at && (
                        <Text color="gray.500" fontSize="sm" mt={2} fontStyle="italic">
                          {t('admin.proposals.status.reverted')}
                        </Text>
                      )}
                    </Box>
                  </Grid>
                </Box>
              )}

              {proposal.has_supervised_activities !== null && proposal.playground_id && (
                <Box mb={4} p={4} borderWidth="1px" borderColor="brand.200" borderRadius="md">
                  <Heading size="sm" mb={2} color="brand.900">{t('playground.supervision.label')}</Heading>
                  <Grid templateColumns="1fr 1fr" gap={4}>
                    <Box p={3} bg="gray.50" borderRadius="md">
                      <Text fontWeight="bold" mb={1} color="gray.700">{t('admin.proposals.current')}</Text>
                      <Text color="gray.700">
                        {proposal.playground?.has_supervised_activities
                          ? t('playground.supervision.supervised')
                          : t('playground.supervision.unsupervised')}
                      </Text>
                    </Box>
                    <Box p={3} bg={getProposalStatusBg(proposal.status, Boolean(proposal.edit?.reverted_at))} borderRadius="md">
                      <Text fontWeight="bold" mb={1} color="gray.700">{t('admin.proposals.proposed')}</Text>
                      <Text color="gray.700">
                        {proposal.has_supervised_activities
                          ? t('playground.supervision.supervised')
                          : t('playground.supervision.unsupervised')}
                      </Text>
                      {proposal.edit?.reverted_at && (
                        <Text color="gray.500" fontSize="sm" mt={2} fontStyle="italic">
                          {t('admin.proposals.status.reverted')}
                        </Text>
                      )}
                    </Box>
                  </Grid>
                </Box>
              )}

              {proposal.is_new_playground && (
                <Box mb={4} p={4} borderWidth="1px" borderColor="brand.200" borderRadius="md">
                  <Heading size="sm" mb={2} color="brand.900">{t('admin.proposals.newPlayground')}</Heading>
                  <Grid templateColumns="1fr" gap={4}>
                    <Box p={3} bg={getProposalStatusBg(proposal.status, Boolean(proposal.edit?.reverted_at))} borderRadius="md">
                      <Flex direction="column" gap={3}>
                        <Box>
                          <Text fontWeight="bold" mb={1} color="gray.700">{t('playground.name')}</Text>
                          <Text color="gray.700">{proposal.proposed_name || t('playground.unnamed')}</Text>
                        </Box>
                        <Box>
                          <Text fontWeight="bold" mb={1} color="gray.700">{t('playground.supervision.label')}</Text>
                          <Text color="gray.700">
                            {proposal.has_supervised_activities
                              ? t('playground.supervision.supervised')
                              : t('playground.supervision.unsupervised')}
                          </Text>
                        </Box>
                        <Box>
                          <Text fontWeight="bold" mb={1} color="gray.700">{t('admin.proposals.location')}</Text>
                          {(proposal.status as string) === 'approved' && !proposal.edit?.reverted_at && (
                            <Link
                              color="brand.500"
                              _hover={{ color: 'secondary.500', textDecoration: 'underline', cursor: 'pointer' }}
                              onClick={handleNavigateToPlayground}
                            >
                              {t('admin.proposals.viewOnMap')}
                            </Link>
                          )}
                        </Box>
                      </Flex>
                    </Box>
                  </Grid>
                </Box>
              )}

              {proposal.delete_playground && (
                <Box mb={4} p={4} borderWidth="1px" borderColor="red.100" bg="red.50" borderRadius="md">
                  <Heading size="sm" mb={2} color="red.700">{t('admin.proposals.deletionWarning')}</Heading>
                  <Text color="red.700">{t('admin.proposals.deletionExplanation')}</Text>
                </Box>
              )}

              {proposal.reason && (
                <Box mb={4} p={4} borderWidth="1px" borderColor="brand.200" borderRadius="md">
                  <Text fontWeight="bold" mb={1} color="gray.700">{t('admin.proposals.reason')}</Text>
                  <Box p={3} bg="gray.50" borderRadius="md">
                    <Text color="gray.700">{proposal.reason}</Text>
                  </Box>
                </Box>
              )}

              {proposal.admin_notes && (
                <Box mb={4} p={4} borderWidth="1px" borderColor="brand.200" borderRadius="md">
                  <Text fontWeight="bold" mb={1} color="gray.700">{t('admin.proposals.adminNotes')}</Text>
                  <Box p={3} bg="gray.50" borderRadius="md">
                    <Text color="gray.700">{proposal.admin_notes}</Text>
                  </Box>
                </Box>
              )}

              <Box mb={4} p={4} borderWidth="1px" borderColor="brand.200" borderRadius="md">
                <Text fontWeight="bold" mb={1} color="gray.700">{t('admin.proposals.decision')}</Text>
                <Box p={3} bg={getProposalStatusBg(proposal.edit?.reverted_at ? 'reverted' : proposal.status, false)} borderRadius="md">
                  <Text color={getProposalStatusColor(proposal.edit?.reverted_at ? 'reverted' : proposal.status, false)} fontWeight="medium">
                    {t(`admin.proposals.status.${proposal.edit?.reverted_at ? 'reverted' : proposal.status}`)}
                  </Text>
                  <Text color="gray.600" fontSize="sm" mt={1}>
                    {formatDate(proposal.updated_at)}
                  </Text>
                </Box>

                {proposal.edit?.reverted_at && (
                  <Box mt={3} p={3} bg="gray.50" borderRadius="md" borderWidth="1px" borderColor="gray.200">
                    <Text color="gray.700" fontWeight="medium">
                      {t('admin.proposals.status.reverted')}
                    </Text>
                    <Text color="gray.600" fontSize="sm" mt={1}>
                      {formatDate(proposal.edit.reverted_at)}
                    </Text>
                  </Box>
                )}
              </Box>

              {proposal.status === 'approved' && proposal.edit && !proposal.edit.reverted_at && (
                <Box mt={2}>
                  <Button
                    onClick={handleRevert}
                    bg="red.500"
                    color="white"
                    border="1px solid"
                    borderColor="red.500"
                    disabled={loading}
                    _hover={{
                      bg: 'red.600',
                      transform: 'translateY(-2px)'
                    }}
                    _active={{
                      bg: 'red.500',
                      transform: 'translateY(0)'
                    }}
                    transition="all 0.2s"
                  >
                    {loading ? (
                      <Box as="span" display="flex" alignItems="center" gap={2}>
                        <Box as="span" w="1em" h="1em" borderRadius="50%" borderWidth="2px" borderStyle="solid" borderColor="white" borderTopColor="transparent" animation="spin 1s linear infinite" />
                        {t('admin.proposals.revert')}
                      </Box>
                    ) : (
                      t('admin.proposals.revert')
                    )}
                  </Button>
                </Box>
              )}
            </Flex>
          )}
        </Box>
      </Box>
    </Box>
  )
}
