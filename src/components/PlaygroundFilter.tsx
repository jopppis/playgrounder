import {
  Box,
  Button,
  Collapsible,
  HStack,
  Input,
  NativeSelect,
  Text,
  VStack,
  useBreakpointValue,
} from '@chakra-ui/react';
import { useEffect, useMemo, useRef, useState } from 'react';
import { useTranslation } from 'react-i18next';
import { FaCity, FaDatabase, FaRegStar, FaStar, FaUserCheck } from 'react-icons/fa';
import { FaFilter, FaFilterCircleXmark } from 'react-icons/fa6';
import { MdExpandLess, MdExpandMore, MdSupervisorAccount, MdTextFields } from 'react-icons/md';
import { useAuth } from '../hooks/useAuth';
import { useCities } from '../hooks/useCities';

export interface FilterOptions {
  searchQuery: string | null;
  visitStatus: 'visited' | 'unvisited' | null;
  minStars: number | null;
  minUserStars: number | null;
  hasSupervised: boolean | null;
  city: string | null;
  dataSource: 'municipality' | 'osm' | 'community' | null;
  noRating: boolean | null;
  noUserRating: boolean | null;
  hideUnnamed: boolean | null;
}

interface PlaygroundFilterProps {
  filters: FilterOptions;
  onChange: (filters: FilterOptions) => void;
  onLoadAllPlaygrounds: () => Promise<void>;
}

export const PlaygroundFilter = ({
  filters,
  onChange,
  onLoadAllPlaygrounds,
}: PlaygroundFilterProps) => {
  const { t } = useTranslation();
  const [isOpen, setIsOpen] = useState(false);
  const [isAdvancedOpen, setIsAdvancedOpen] = useState(false);
  const [localSearchQuery, setLocalSearchQuery] = useState(filters.searchQuery || '');
  const searchTimeoutRef = useRef<NodeJS.Timeout | null>(null);
  const { user } = useAuth();
  const filterRef = useRef<HTMLDivElement>(null);
  const searchInputRef = useRef<HTMLInputElement>(null);
  const { cities, loading: citiesLoading } = useCities();
  const [isCitySelectOpen, setIsCitySelectOpen] = useState(false);

  const handleSearchChange = (value: string) => {
    setLocalSearchQuery(value);

    // Clear any existing timeout
    if (searchTimeoutRef.current) {
      clearTimeout(searchTimeoutRef.current);
    }

    // Set a new timeout to update the filters
    searchTimeoutRef.current = setTimeout(() => {
      onChange({
        ...filters,
        searchQuery: value || null,
      });
    }, 500); // Increased to 500ms for better performance with database persistence
  };

  // Cleanup timeout on unmount
  useEffect(() => {
    return () => {
      if (searchTimeoutRef.current) {
        clearTimeout(searchTimeoutRef.current);
      }
    };
  }, []);

  const hasActiveFilters = useMemo(() => {
    // For non-logged in users, only check non-user-specific filters
    if (!user) {
      return (
        filters.searchQuery !== null ||
        filters.minStars !== null ||
        filters.hasSupervised !== null ||
        filters.city !== null ||
        filters.noRating !== null ||
        filters.hideUnnamed !== null ||
        filters.dataSource !== null
      );
    }
    // For logged in users, check all filters
    return (
      filters.searchQuery !== null ||
      filters.visitStatus !== null ||
      filters.minStars !== null ||
      filters.minUserStars !== null ||
      filters.hasSupervised !== null ||
      filters.city !== null ||
      filters.noRating !== null ||
      filters.noUserRating !== null ||
      filters.dataSource !== null ||
      filters.hideUnnamed !== null
    );
  }, [filters, user]);

  const resetFilters = () => {
    // Clear the local search query
    setLocalSearchQuery('');
    // Clear any pending timeout
    if (searchTimeoutRef.current) {
      clearTimeout(searchTimeoutRef.current);
    }

    // For non-logged in users, only reset non-user-specific filters
    if (!user) {
      onChange({
        ...filters,
        searchQuery: null,
        minStars: null,
        hasSupervised: null,
        city: null,
        noRating: null,
        dataSource: null,
        hideUnnamed: null,
      });
      return;
    }
    // For logged in users, reset all filters
    onChange({
      searchQuery: null,
      visitStatus: null,
      minStars: null,
      minUserStars: null,
      hasSupervised: null,
      city: null,
      noRating: null,
      noUserRating: null,
      dataSource: null,
      hideUnnamed: null,
    });
  };

  const dataSources = [
    { label: t('playground.dataSource.any'), value: null },
    { label: t('playground.dataSource.municipality'), value: 'municipality' },
    { label: t('playground.dataSource.osm'), value: 'osm' },
    { label: t('playground.dataSource.community'), value: 'community' },
  ];

  const supervisionOptions = [
    { label: t('playground.supervision.any'), value: null },
    { label: t('playground.supervision.supervised'), value: 'true' },
    { label: t('playground.supervision.unsupervised'), value: 'false' },
  ];

  const visitStatusOptions = [
    { label: t('any'), value: null },
    { label: t('visited'), value: 'visited' },
    { label: t('unvisited'), value: 'unvisited' },
  ];

  const starOptions = [
    { label: t('any'), value: null },
    { label: '★★★★★', value: '5' },
    { label: '★★★★', value: '4' },
    { label: '★★★', value: '3' },
    { label: '★★', value: '2' },
    { label: '★', value: '1' },
    { label: t('noRating'), value: 'no-rating' },
  ];

  const filterPosition = useBreakpointValue({
    base: {
      top: '4',
      left: '24px',
      width: isOpen ? '280px' : '40px',
      maxWidth: isOpen ? '280px' : '40px',
      right: 'auto',
      transition: 'width 0.2s, max-width 0.2s',
    },
    sm: { top: '4', left: '24px', width: '350px', maxWidth: '350px', right: 'auto' },
    md: { top: '4', left: '24px', width: '400px', maxWidth: '400px', right: 'auto' },
  });

  const buttonStyle = useBreakpointValue({
    base: {
      height: '40px',
      width: isOpen ? '100%' : '40px',
      padding: isOpen ? '0 12px' : 0,
      display: 'flex',
      alignItems: 'center',
      justifyContent: isOpen ? 'space-between' : 'center',
      borderRadius: isOpen ? 'md md 0 0' : 'md',
      transition: 'all 0.2s',
    },
    sm: {
      height: '40px',
      width: '100%',
      padding: '0 12px',
      borderRadius: isOpen ? 'md md 0 0' : 'md',
    },
  });

  const showButtonText =
    useBreakpointValue({
      base: isOpen,
      sm: true,
    }) ?? true;

  useEffect(() => {
    const handleClickOutside = (event: MouseEvent) => {
      if (filterRef.current && !filterRef.current.contains(event.target as Node)) {
        setIsOpen(false);
      }
    };

    document.addEventListener('mousedown', handleClickOutside);
    return () => {
      document.removeEventListener('mousedown', handleClickOutside);
    };
  }, []);

  // Handle city select focus to load all playgrounds
  const handleCitySelectFocus = async () => {
    if (!isCitySelectOpen) {
      setIsCitySelectOpen(true);
      await onLoadAllPlaygrounds();
    }
  };

  const handleCitySelectBlur = () => {
    setIsCitySelectOpen(false);
  };

  return (
    <Box position="absolute" {...filterPosition} zIndex={1000} ref={filterRef}>
      <Box bg="white" borderRadius="md" boxShadow="xl" width="100%" position="relative">
        {!isOpen ? (
          <Button
            bg="white"
            color="gray.700"
            _hover={{ bg: 'gray.50' }}
            _active={{ bg: 'gray.100' }}
            fontSize="sm"
            onClick={() => {
              setIsOpen(true);
              // Focus the search input after opening
              setTimeout(() => {
                searchInputRef.current?.focus();
              }, 0);
            }}
            {...buttonStyle}
            position="relative"
            zIndex="2"
            aria-label={t('filterPlaygrounds')}
            boxShadow="none"
          >
            {showButtonText ? (
              <HStack width="100%" justify="space-between">
                <Text>{t('filterPlaygrounds')}</Text>
                <Box display="flex" alignItems="center" gap={1}>
                  {hasActiveFilters && (
                    <Box
                      w="8px"
                      h="8px"
                      borderRadius="full"
                      bg="brand.500"
                      position="relative"
                      top="-1px"
                    />
                  )}
                  <Box as={FaFilter} boxSize="16px" />
                </Box>
              </HStack>
            ) : (
              <Box position="relative">
                {hasActiveFilters && (
                  <Box
                    position="absolute"
                    w="6px"
                    h="6px"
                    borderRadius="full"
                    bg="brand.500"
                    top="-1px"
                    left="-1px"
                  />
                )}
                <Box as={FaFilter} boxSize="16px" />
              </Box>
            )}
          </Button>
        ) : (
          <Box>
            <Input
              ref={searchInputRef}
              placeholder={t('searchPlaceholder')}
              size="md"
              fontSize="md"
              height="40px"
              value={localSearchQuery}
              onChange={(e) => handleSearchChange(e.target.value)}
              bg="white"
              color="gray.700"
              borderColor="gray.300"
              _hover={{ borderColor: 'gray.400' }}
              _focus={{
                borderColor: 'brand.500',
                boxShadow: '0 0 0 1px var(--chakra-colors-brand-500)',
                outline: 'none',
              }}
              borderRadius="md md 0 0"
              border="0px"
              pr="40px"
              position="relative"
              zIndex="2"
            />
            <Button
              position="absolute"
              right={0}
              top={0}
              height="40px"
              width="40px"
              bg="transparent"
              _hover={{ bg: 'gray.50' }}
              _active={{ bg: 'gray.100' }}
              onClick={() => (hasActiveFilters ? resetFilters() : setIsOpen(false))}
              border="0px"
              display="flex"
              alignItems="center"
              justifyContent="center"
              zIndex="3"
              aria-label={hasActiveFilters ? t('removeFilters') : t('filterPlaygrounds')}
            >
              <Box
                as={hasActiveFilters ? FaFilterCircleXmark : FaFilter}
                boxSize="16px"
                color={hasActiveFilters ? 'brand.500' : 'gray.700'}
              />
            </Button>
          </Box>
        )}

        {isOpen && (
          <VStack
            align="stretch"
            p={2}
            pt={2}
            gap={1.5}
            bg="white"
            width="100%"
            position={{ base: 'absolute', sm: 'static' }}
            left={{ base: '0', sm: 'auto' }}
            top={{ base: '32px', sm: 'auto' }}
            borderRadius="0 0 md md"
            boxShadow="0 4px 6px -1px rgba(0, 0, 0, 0.1), 0 2px 4px -1px rgba(0, 0, 0, 0.06)"
            zIndex="1"
            maxHeight="calc(90dvh - 40px)"
            overflowY="auto"
          >
            <Box mt={{ base: 0, sm: 0 }}>
              <HStack gap={1.5} mb={{ base: 2, sm: 1.5 }}>
                <FaCity
                  size={16}
                  color={filters.city ? 'var(--chakra-colors-brand-500)' : 'currentColor'}
                />
                <Text fontSize="md" fontWeight="medium" color="gray.700">
                  {t('city')}
                </Text>
              </HStack>
              <Box position="relative">
                <NativeSelect.Root
                  size="md"
                  variant="outline"
                  colorPalette="brand"
                  color="gray.700"
                  disabled={citiesLoading}
                >
                  <NativeSelect.Field
                    value={filters.city ?? ''}
                    onChange={(e) => {
                      onChange({
                        ...filters,
                        city: e.target.value || null,
                      });
                    }}
                    height="36px"
                    fontSize="md"
                    onFocus={handleCitySelectFocus}
                    onBlur={handleCitySelectBlur}
                  >
                    {cities.map((city) => (
                      <option key={city.value ?? 'all'} value={city.value ?? ''}>
                        {city.label}
                      </option>
                    ))}
                  </NativeSelect.Field>
                  <NativeSelect.Indicator />
                </NativeSelect.Root>
              </Box>
            </Box>

            <Box>
              <HStack gap={1.5} mb={1.5}>
                <MdTextFields
                  size={16}
                  color={
                    filters.hideUnnamed !== null ? 'var(--chakra-colors-brand-500)' : 'currentColor'
                  }
                />
                <Text fontSize="md" fontWeight="medium" color="gray.700">
                  {t('playground.filter.unnamed.label')}
                </Text>
              </HStack>
              <Box position="relative">
                <NativeSelect.Root
                  size="md"
                  variant="outline"
                  colorPalette="brand"
                  color="gray.700"
                >
                  <NativeSelect.Field
                    value={filters.hideUnnamed === null ? '' : String(filters.hideUnnamed)}
                    onChange={(e) =>
                      onChange({
                        ...filters,
                        hideUnnamed: e.target.value === '' ? null : e.target.value === 'true',
                      })
                    }
                    height="36px"
                    fontSize="md"
                    aria-label={t('playground.filter.unnamed.label')}
                  >
                    <option value="">{t('playground.filter.unnamed.any')}</option>
                    <option value="true">{t('playground.filter.unnamed.hide')}</option>
                  </NativeSelect.Field>
                  <NativeSelect.Indicator />
                </NativeSelect.Root>
              </Box>
            </Box>

            {user && (
              <Box>
                <HStack gap={1.5} mb={1.5}>
                  <FaUserCheck
                    size={16}
                    color={filters.visitStatus ? 'var(--chakra-colors-brand-500)' : 'currentColor'}
                  />
                  <Text fontSize="md" fontWeight="medium" color="gray.700">
                    {t('visitStatus')}
                  </Text>
                </HStack>
                <Box position="relative">
                  <NativeSelect.Root
                    size="md"
                    variant="outline"
                    colorPalette="brand"
                    color="gray.700"
                  >
                    <NativeSelect.Field
                      value={filters.visitStatus ?? ''}
                      onChange={(e) =>
                        onChange({
                          ...filters,
                          visitStatus: (e.target.value as 'visited' | 'unvisited') || null,
                        })
                      }
                      height="36px"
                      fontSize="md"
                    >
                      {visitStatusOptions.map((option) => (
                        <option key={option.value ?? 'any'} value={option.value ?? ''}>
                          {option.label}
                        </option>
                      ))}
                    </NativeSelect.Field>
                    <NativeSelect.Indicator />
                  </NativeSelect.Root>
                </Box>
              </Box>
            )}

            <Box borderTop="1px" borderColor="gray.200" pt={2}>
              <HStack gap={1.5} mb={1.5}>
                <FaStar
                  size={16}
                  color={
                    filters.minStars !== null || filters.noRating
                      ? 'var(--chakra-colors-brand-500)'
                      : 'currentColor'
                  }
                />
                <Text fontSize="md" fontWeight="medium" color="gray.700">
                  {t('minStars')}
                </Text>
              </HStack>
              <Box position="relative">
                <NativeSelect.Root
                  size="md"
                  variant="outline"
                  colorPalette="brand"
                  color="gray.700"
                >
                  <NativeSelect.Field
                    value={filters.noRating ? 'no-rating' : (filters.minStars?.toString() ?? '')}
                    onChange={(e) => {
                      const value = e.target.value;
                      if (value === 'no-rating') {
                        onChange({
                          ...filters,
                          minStars: null,
                          noRating: true,
                        });
                      } else {
                        onChange({
                          ...filters,
                          minStars: value ? parseInt(value) : null,
                          noRating: null,
                        });
                      }
                    }}
                    height="36px"
                    fontSize="md"
                    aria-label={t('minStars')}
                  >
                    {starOptions.map((option) => (
                      <option key={option.value ?? 'any'} value={option.value ?? ''}>
                        {option.label}
                      </option>
                    ))}
                  </NativeSelect.Field>
                  <NativeSelect.Indicator />
                </NativeSelect.Root>
              </Box>
            </Box>

            <Box borderTop="1px" borderColor="gray.200" pt={2}>
              <Collapsible.Root
                open={isAdvancedOpen}
                onOpenChange={(details) => setIsAdvancedOpen(details.open)}
              >
                <Collapsible.Content>
                  <VStack align="stretch" gap={4} pt={2}>
                    {user && (
                      <Box>
                        <HStack gap={1.5} mb={1.5}>
                          <FaRegStar
                            size={16}
                            color={
                              filters.minUserStars !== null || filters.noUserRating
                                ? 'var(--chakra-colors-brand-500)'
                                : 'currentColor'
                            }
                          />
                          <Text fontSize="md" fontWeight="medium" color="gray.700">
                            {t('minUserStars')}
                          </Text>
                        </HStack>
                        <Box position="relative">
                          <NativeSelect.Root
                            size="md"
                            variant="outline"
                            colorPalette="brand"
                            color="gray.700"
                          >
                            <NativeSelect.Field
                              value={
                                filters.noUserRating
                                  ? 'no-rating'
                                  : (filters.minUserStars?.toString() ?? '')
                              }
                              onChange={(e) => {
                                const value = e.target.value;
                                if (value === 'no-rating') {
                                  onChange({
                                    ...filters,
                                    minUserStars: null,
                                    noUserRating: true,
                                  });
                                } else {
                                  onChange({
                                    ...filters,
                                    minUserStars: value ? parseInt(value) : null,
                                    noUserRating: null,
                                  });
                                }
                              }}
                              height="36px"
                              fontSize="md"
                              data-testid="user-rating-select"
                              aria-label={t('minUserStars')}
                            >
                              {starOptions.map((option) => (
                                <option key={option.value ?? 'any'} value={option.value ?? ''}>
                                  {option.label}
                                </option>
                              ))}
                            </NativeSelect.Field>
                            <NativeSelect.Indicator />
                          </NativeSelect.Root>
                        </Box>
                      </Box>
                    )}

                    <Box>
                      <HStack gap={1.5} mb={1.5}>
                        <MdSupervisorAccount
                          size={16}
                          color={
                            filters.hasSupervised !== null
                              ? 'var(--chakra-colors-brand-500)'
                              : 'currentColor'
                          }
                        />
                        <Text fontSize="md" fontWeight="medium" color="gray.700">
                          {t('playground.supervision.label')}
                        </Text>
                      </HStack>
                      <Box position="relative">
                        <NativeSelect.Root
                          size="md"
                          variant="outline"
                          colorPalette="brand"
                          color="gray.700"
                        >
                          <NativeSelect.Field
                            value={
                              filters.hasSupervised === null ? '' : String(filters.hasSupervised)
                            }
                            onChange={(e) =>
                              onChange({
                                ...filters,
                                hasSupervised:
                                  e.target.value === '' ? null : e.target.value === 'true',
                              })
                            }
                            height="36px"
                            fontSize="md"
                            aria-label={t('playground.supervision.label')}
                          >
                            {supervisionOptions.map((option) => (
                              <option key={option.value ?? 'any'} value={option.value ?? ''}>
                                {option.label}
                              </option>
                            ))}
                          </NativeSelect.Field>
                          <NativeSelect.Indicator />
                        </NativeSelect.Root>
                      </Box>
                    </Box>

                    <Box>
                      <HStack gap={1.5} mb={1.5}>
                        <FaDatabase
                          size={16}
                          color={
                            filters.dataSource ? 'var(--chakra-colors-brand-500)' : 'currentColor'
                          }
                        />
                        <Text fontSize="md" fontWeight="medium" color="gray.700">
                          {t('playground.dataSource.label')}
                        </Text>
                      </HStack>
                      <Box position="relative">
                        <NativeSelect.Root
                          size="md"
                          variant="outline"
                          colorPalette="brand"
                          color="gray.700"
                        >
                          <NativeSelect.Field
                            value={filters.dataSource ?? ''}
                            onChange={(e) =>
                              onChange({
                                ...filters,
                                dataSource:
                                  (e.target.value as 'municipality' | 'osm' | 'community') || null,
                              })
                            }
                            height="36px"
                            fontSize="md"
                            aria-label={t('playground.dataSource.label')}
                          >
                            {dataSources.map((source) => (
                              <option key={source.value ?? 'any'} value={source.value ?? ''}>
                                {source.label}
                              </option>
                            ))}
                          </NativeSelect.Field>
                          <NativeSelect.Indicator />
                        </NativeSelect.Root>
                      </Box>
                    </Box>
                  </VStack>
                </Collapsible.Content>

                <Collapsible.Trigger asChild>
                  <Button
                    variant="ghost"
                    size="md"
                    width="full"
                    height="36px"
                    display="flex"
                    justifyContent="space-between"
                    alignItems="center"
                    px={3}
                    color="gray.700"
                    bg="gray.50"
                    _hover={{ bg: 'gray.100' }}
                    mt={isAdvancedOpen ? 4 : 0}
                  >
                    <Text fontSize="md" fontWeight="medium">
                      {isAdvancedOpen ? t('showLess') : t('showMore')}
                    </Text>
                    <Box as={isAdvancedOpen ? MdExpandLess : MdExpandMore} boxSize={5} />
                  </Button>
                </Collapsible.Trigger>
              </Collapsible.Root>
            </Box>
          </VStack>
        )}
      </Box>
    </Box>
  );
};
