import { Box, Button, Flex, Heading, Link, Spinner, Table, Text } from '@chakra-ui/react';
import { useMemo, useState } from 'react';
import { useTranslation } from 'react-i18next';
import {
  EditProposalWithPlayground,
  useAdminEditProposals,
} from '../../hooks/useAdminEditProposals';
import ProposalDetail from './ProposalDetail';

interface ProposalListProps {
  onNavigateToPlayground?: (latitude: number, longitude: number) => void;
}

export default function ProposalList({ onNavigateToPlayground }: ProposalListProps) {
  const { t } = useTranslation();
  const { proposals, loading, fetchProposals } = useAdminEditProposals();
  const [statusFilter, setStatusFilter] = useState('pending');
  const [selectedProposal, setSelectedProposal] = useState<EditProposalWithPlayground | null>(null);

  const filteredProposals = useMemo(() => {
    if (statusFilter === 'all') return proposals;
    if (statusFilter === 'reverted') {
      return proposals.filter((p) => p.edit?.reverted_at !== null);
    }
    return proposals.filter((p) => p.status === statusFilter && !p.edit?.reverted_at);
  }, [proposals, statusFilter]);

  const handleStatusChange = (e: React.ChangeEvent<HTMLSelectElement>) => {
    setStatusFilter(e.target.value);
  };

  const handleProposalClick = (proposal: EditProposalWithPlayground) => {
    setSelectedProposal(proposal);
  };

  const handleBackToList = async () => {
    setSelectedProposal(null);
    await fetchProposals();
  };

  // Helper functions
  const getStatusColor = (status: string, isReverted: boolean = false) => {
    if (isReverted) return 'gray.500';
    switch (status) {
      case 'pending':
        return 'secondary.500';
      case 'approved':
        return 'green.500';
      case 'rejected':
        return 'red.500';
      default:
        return 'gray.500';
    }
  };

  const formatDate = (dateString: string) => {
    const date = new Date(dateString);
    return new Intl.DateTimeFormat('default', {
      year: 'numeric',
      month: 'short',
      day: 'numeric',
      hour: '2-digit',
      minute: '2-digit',
    }).format(date);
  };

  const getProposalType = (proposal: EditProposalWithPlayground) => {
    if (proposal.delete_playground) {
      return t('admin.proposals.type.deletion');
    }
    if (proposal.is_new_playground) {
      return t('admin.proposals.type.new');
    }
    return t('admin.proposals.type.dataUpdate');
  };

  const getProposalTypeColor = (proposal: EditProposalWithPlayground) => {
    if (proposal.delete_playground) {
      return 'red.500';
    }
    if (proposal.is_new_playground) {
      return 'green.500';
    }
    return 'blue.500';
  };

  const getPlaygroundName = (proposal: EditProposalWithPlayground) => {
    if (!proposal.playground_id) {
      return proposal.proposed_name || t('playground.unnamed');
    }
    return proposal.playground.name || t('playground.unnamed');
  };

  const handleNavigateToPlayground = (proposal: EditProposalWithPlayground) => {
    if (!onNavigateToPlayground) return;

    if (proposal.playground_id) {
      onNavigateToPlayground(proposal.playground.latitude, proposal.playground.longitude);
    }
  };

  if (selectedProposal) {
    return (
      <ProposalDetail
        proposal={selectedProposal}
        onBack={handleBackToList}
        onNavigateToPlayground={onNavigateToPlayground}
        onProposalAction={fetchProposals}
      />
    );
  }

  return (
    <Box>
      <Flex justify="space-between" align="center" mb={4}>
        <Heading size="md" color="brand.700">
          {t('admin.proposals.title')}
        </Heading>
        <select
          value={statusFilter}
          onChange={handleStatusChange}
          style={{
            width: '200px',
            padding: '8px',
            borderWidth: '1px',
            borderColor: 'var(--chakra-colors-brand-200)',
            borderRadius: 'var(--chakra-radii-md)',
            backgroundColor: 'white',
            color: 'var(--chakra-colors-brand-700)',
          }}
        >
          <option value="all">{t('admin.proposals.filter.all')}</option>
          <option value="pending">{t('admin.proposals.filter.pending')}</option>
          <option value="approved">{t('admin.proposals.filter.approved')}</option>
          <option value="rejected">{t('admin.proposals.filter.rejected')}</option>
          <option value="reverted">{t('admin.proposals.filter.reverted')}</option>
        </select>
      </Flex>

      {loading ? (
        <Flex justify="center" py={8}>
          <Spinner size="xl" color="brand.500" />
        </Flex>
      ) : filteredProposals.length === 0 ? (
        <Box textAlign="center" py={8}>
          <Text color="gray.600">{t('admin.proposals.noProposals')}</Text>
        </Box>
      ) : (
        <Box overflowX="auto">
          <Table.Root>
            <Table.Header>
              <Table.Row bg="brand.50">
                <Table.Cell as="th" color="brand.900" fontWeight="semibold" p={3}>
                  {t('admin.proposals.table.date')}
                </Table.Cell>
                <Table.Cell as="th" color="brand.900" fontWeight="semibold" p={3}>
                  {t('admin.proposals.table.playground')}
                </Table.Cell>
                <Table.Cell as="th" color="brand.900" fontWeight="semibold" p={3}>
                  {t('admin.proposals.table.type')}
                </Table.Cell>
                <Table.Cell as="th" color="brand.900" fontWeight="semibold" p={3}>
                  {t('admin.proposals.table.status')}
                </Table.Cell>
                <Table.Cell as="th" color="brand.900" fontWeight="semibold" p={3}>
                  {t('admin.proposals.table.actions')}
                </Table.Cell>
              </Table.Row>
            </Table.Header>
            <Table.Body>
              {filteredProposals.map((proposal) => (
                <Table.Row
                  key={proposal.id}
                  _hover={{ bg: 'brand.50' }}
                  borderBottomWidth="1px"
                  borderColor="brand.100"
                >
                  <Table.Cell p={3} color="gray.700">
                    {formatDate(proposal.created_at)}
                  </Table.Cell>
                  <Table.Cell p={3} color="gray.700">
                    <Link
                      color="brand.500"
                      _hover={{
                        color: 'secondary.500',
                        textDecoration: 'underline',
                        cursor: 'pointer',
                      }}
                      onClick={() => handleNavigateToPlayground(proposal)}
                    >
                      {getPlaygroundName(proposal)}
                    </Link>
                  </Table.Cell>
                  <Table.Cell p={3} color={getProposalTypeColor(proposal)}>
                    {getProposalType(proposal)}
                  </Table.Cell>
                  <Table.Cell p={3}>
                    <Text
                      color={getStatusColor(
                        proposal.status,
                        proposal.edit?.reverted_at ? true : false,
                      )}
                    >
                      {proposal.edit?.reverted_at
                        ? t('admin.proposals.status.reverted')
                        : t(`admin.proposals.status.${proposal.status}`)}
                    </Text>
                  </Table.Cell>
                  <Table.Cell p={3}>
                    <Button
                      size="sm"
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
                      onClick={() => handleProposalClick(proposal)}
                    >
                      {t('admin.proposals.view')}
                    </Button>
                  </Table.Cell>
                </Table.Row>
              ))}
            </Table.Body>
          </Table.Root>
        </Box>
      )}
    </Box>
  );
}
