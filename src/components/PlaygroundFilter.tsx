import {
  Box,
  Button,
  Collapsible,
  HStack,
  NativeSelect,
  Stack,
  Text,
  VStack,
  useBreakpointValue
} from '@chakra-ui/react'
import { useEffect, useMemo, useRef, useState } from 'react'
import { useTranslation } from 'react-i18next'
import { FaStar } from 'react-icons/fa'
import { FaFilter, FaFilterCircleXmark } from 'react-icons/fa6'
import { useAuth } from '../hooks/useAuth'
import { usePlaygrounds } from '../hooks/usePlaygrounds'

export interface FilterOptions {
  visitStatus: 'visited' | 'unvisited' | null
  minStars: number | null
  minUserStars: number | null
  hasSupervised: boolean | null
  city: string | null
  noRating: boolean | null
  noUserRating: boolean | null
  dataSource: 'municipality' | 'osm' | null
}

interface PlaygroundFilterProps {
  filters: FilterOptions
  onChange: (filters: FilterOptions) => void
}

export const PlaygroundFilter = ({ filters, onChange }: PlaygroundFilterProps) => {
  const { t } = useTranslation()
  const [isOpen, setIsOpen] = useState(false)
  const [showAllStars, setShowAllStars] = useState(false)
  const { user } = useAuth()
  const filterRef = useRef<HTMLDivElement>(null)
  const { playgrounds } = usePlaygrounds()

  const hasActiveFilters = useMemo(() => {
    // For non-logged in users, only check non-user-specific filters
    if (!user) {
      return filters.minStars !== null ||
        filters.hasSupervised !== null ||
        filters.city !== null ||
        filters.noRating !== null ||
        filters.dataSource !== null
    }
    // For logged in users, check all filters
    return filters.visitStatus !== null ||
      filters.minStars !== null ||
      filters.minUserStars !== null ||
      filters.hasSupervised !== null ||
      filters.city !== null ||
      filters.noRating !== null ||
      filters.noUserRating !== null ||
      filters.dataSource !== null
  }, [filters, user])

  const resetFilters = () => {
    // For non-logged in users, only reset non-user-specific filters
    if (!user) {
      onChange({
        ...filters,
        minStars: null,
        hasSupervised: null,
        city: null,
        noRating: null,
        dataSource: null
      })
      return
    }
    // For logged in users, reset all filters
    onChange({
      visitStatus: null,
      minStars: null,
      minUserStars: null,
      hasSupervised: null,
      city: null,
      noRating: null,
      noUserRating: null,
      dataSource: null
    })
  }

  // Extract unique cities from playgrounds and sort them alphabetically
  const cities = useMemo(() => {
    if (!playgrounds || playgrounds.length === 0) {
      return [{ label: t('allCities'), value: null }]
    }

    const uniqueCities = Array.from(new Set(
      playgrounds
        .map(playground => playground.city)
        .filter((city): city is string => city !== null && city !== undefined)
    )).sort()

    return [
      { label: t('allCities'), value: null },
      { label: t('playground.noCity'), value: 'no_city' },
      ...uniqueCities.map(city => ({
        label: city,
        value: city.toLowerCase()
      }))
    ]
  }, [playgrounds, t])

  const dataSources = [
    { label: t('playground.dataSource.any'), value: null },
    { label: t('playground.dataSource.municipality'), value: 'municipality' },
    { label: t('playground.dataSource.osm'), value: 'osm' }
  ]

  const filterPosition = useBreakpointValue({
    base: {
      top: '4',
      left: '24px',
      width: isOpen ? '280px' : '40px',
      maxWidth: isOpen ? '280px' : '40px',
      right: 'auto',
      transition: 'width 0.2s, max-width 0.2s'
    },
    sm: { top: '4', left: '24px', width: '350px', maxWidth: '350px', right: 'auto' },
    md: { top: '4', left: '24px', width: '400px', maxWidth: '400px', right: 'auto' }
  })

  const buttonStyle = useBreakpointValue({
    base: {
      height: '40px',
      width: isOpen ? '100%' : '40px',
      padding: isOpen ? '0 12px' : 0,
      display: 'flex',
      alignItems: 'center',
      justifyContent: isOpen ? 'space-between' : 'center',
      borderRadius: isOpen ? 'md md 0 0' : 'md',
      transition: 'all 0.2s'
    },
    sm: {
      height: '40px',
      width: '100%',
      padding: '0 12px',
      borderRadius: isOpen ? 'md md 0 0' : 'md'
    }
  })

  const showButtonText = useBreakpointValue({
    base: isOpen,
    sm: true
  }) ?? true

  useEffect(() => {
    const handleClickOutside = (event: MouseEvent) => {
      if (filterRef.current && !filterRef.current.contains(event.target as Node)) {
        setIsOpen(false)
      }
    }

    document.addEventListener('mousedown', handleClickOutside)
    return () => {
      document.removeEventListener('mousedown', handleClickOutside)
    }
  }, [])

  const FilterButton = ({ value, isSelected, onClick, ...props }: {
    value: string | React.ReactElement,
    isSelected: boolean,
    onClick: () => void,
    [key: string]: unknown
  }) => (
    <Button
      size="sm"
      height="36px"
      variant="ghost"
      bg={isSelected ? 'brand.500' : 'transparent'}
      color={isSelected ? 'white' : 'gray.700'}
      _hover={{
        bg: isSelected ? 'brand.500' : 'gray.50',
        color: isSelected ? 'white' : 'gray.700'
      }}
      _active={{
        bg: 'brand.500',
        color: 'white',
        transform: 'scale(0.98)'
      }}
      transition="all 0.2s"
      onClick={onClick}
      width="full"
      fontSize="sm"
      justifyContent="flex-start"
      {...props}
    >
      {value}
    </Button>
  )

  return (
    <Box
      position="absolute"
      {...filterPosition}
      zIndex={1000}
      ref={filterRef}
    >
      <Box bg="white" borderRadius={isOpen ? "md md 0 0" : "md"} boxShadow={isOpen ? "none" : "xl"} width="100%" position="relative">
        <Button
          bg="white"
          color="gray.700"
          _hover={{ bg: 'gray.50' }}
          _active={{ bg: 'gray.100' }}
          fontSize="sm"
          onClick={() => setIsOpen(!isOpen)}
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
                <Box as={FaFilter} boxSize="14px" />
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
              <Box as={FaFilter} boxSize="14px" />
            </Box>
          )}
        </Button>

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
            {hasActiveFilters && (
              <Button
                size="xs"
                height="28px"
                variant="ghost"
                bg="transparent"
                color="gray.700"
                _hover={{
                  bg: 'gray.50',
                  color: 'gray.700'
                }}
                _active={{
                  bg: 'brand.500',
                  color: 'white',
                  transform: 'scale(0.98)'
                }}
                onClick={resetFilters}
                width="full"
                fontSize="sm"
                justifyContent="flex-start"
                transition="all 0.2s"
                mt={{ base: 1, sm: 0 }}
                px={0}
              >
                <HStack width="100%" justify="space-between" px={2}>
                  <Text>{t('removeFilters')}</Text>
                  <FaFilterCircleXmark size={14} />
                </HStack>
              </Button>
            )}
            <Box mt={{ base: 2, sm: 0 }} >
              <Text fontSize="sm" fontWeight="medium" color="gray.700" mb={{ base: 2, sm: 1 }}>
                {t('city')}
              </Text>
              <Box position="relative">
                <NativeSelect.Root
                  size="sm"
                  variant="outline"
                  colorPalette="brand"
                  color="gray.700"
                >
                  <NativeSelect.Field
                    value={filters.city ?? ''}
                    onChange={(e) => onChange({
                      ...filters,
                      city: e.target.value || null
                    })}
                    height="28px"
                    fontSize="sm"
                  >
                    {cities.map((city) => (
                      <option
                        key={city.value ?? 'all'}
                        value={city.value ?? ''}
                      >
                        {city.label}
                      </option>
                    ))}
                  </NativeSelect.Field>
                  <NativeSelect.Indicator/>
                </NativeSelect.Root>
              </Box>
            </Box>

            <Box>
              <Text fontSize="sm" fontWeight="medium" color="gray.700" mb={1}>
                {t('playground.dataSource.label')}
              </Text>
              <Box position="relative">
                <NativeSelect.Root
                  size="sm"
                  variant="outline"
                  colorPalette="brand"
                  color="gray.700"
                >
                  <NativeSelect.Field
                    value={filters.dataSource ?? ''}
                    onChange={(e) => onChange({
                      ...filters,
                      dataSource: e.target.value as 'municipality' | 'osm' || null
                    })}
                    height="28px"
                    fontSize="sm"
                  >
                    {dataSources.map((source) => (
                      <option
                        key={source.value ?? 'any'}
                        value={source.value ?? ''}
                      >
                        {source.label}
                      </option>
                    ))}
                  </NativeSelect.Field>
                  <NativeSelect.Indicator/>
                </NativeSelect.Root>
              </Box>
            </Box>

            <Box>
              <Text fontSize="sm" fontWeight="medium" color="gray.700" mb={1}>
                {t('playground.supervision.label')}
              </Text>
              <Stack gap={0.5}>
                <FilterButton
                  value={t('playground.supervision.supervised')}
                  isSelected={filters.hasSupervised === true}
                  onClick={() => onChange({
                    ...filters,
                    hasSupervised: filters.hasSupervised === true ? null : true
                  })}
                />
                <FilterButton
                  value={t('playground.supervision.unsupervised')}
                  isSelected={filters.hasSupervised === false}
                  onClick={() => onChange({
                    ...filters,
                    hasSupervised: filters.hasSupervised === false ? null : false
                  })}
                />
              </Stack>
            </Box>

            {user && (
              <Box>
                <Text fontSize="sm" fontWeight="medium" color="gray.700" mb={1}>
                  {t('visitStatus')}
                </Text>
                <Stack gap={0.5}>
                  <FilterButton
                    value={t('visited')}
                    isSelected={filters.visitStatus === 'visited'}
                    onClick={() => onChange({
                      ...filters,
                      visitStatus: filters.visitStatus === 'visited' ? null : 'visited'
                    })}
                  />
                  <FilterButton
                    value={t('unvisited')}
                    isSelected={filters.visitStatus === 'unvisited'}
                    onClick={() => onChange({
                      ...filters,
                      visitStatus: filters.visitStatus === 'unvisited' ? null : 'unvisited'
                    })}
                  />
                </Stack>
              </Box>
            )}

            <Box borderTop="1px" borderColor="gray.200" pt={1.5}>
              <Text fontSize="sm" fontWeight="medium" color="gray.700" mb={1}>
                {t('minStars')}
              </Text>
              <Stack gap={0.5}>
                {[5, 4].map((stars) => (
                  <FilterButton
                    key={stars}
                    value={
                      <HStack gap={0.5}>
                        {[...Array(stars)].map((_, i) => (
                          <FaStar key={i} color="secondary.500" size={14} />
                        ))}
                      </HStack>
                    }
                    isSelected={filters.minStars === stars}
                    onClick={() => onChange({
                      ...filters,
                      minStars: filters.minStars === stars ? null : stars,
                      noRating: null
                    })}
                  />
                ))}

                {!showAllStars && (
                  <Button
                    size="xs"
                    height="28px"
                    variant="ghost"
                    bg="transparent"
                    color="gray.700"
                    _hover={{
                      bg: 'gray.50',
                      color: 'gray.700'
                    }}
                    _active={{
                      bg: 'brand.500',
                      color: 'white',
                      transform: 'scale(0.98)'
                    }}
                    onClick={() => setShowAllStars(true)}
                    width="full"
                    fontSize="sm"
                    justifyContent="flex-start"
                    transition="all 0.2s"
                  >
                    {t('showMore')}
                  </Button>
                )}

                <Collapsible.Root open={showAllStars}>
                  <Collapsible.Content>
                    <Stack gap={0.5}>
                      {[3, 2, 1].map((stars) => (
                        <FilterButton
                          key={stars}
                          value={
                            <HStack gap={0.5}>
                              {[...Array(stars)].map((_, i) => (
                                <FaStar key={i} color="secondary.500" size={14} />
                              ))}
                            </HStack>
                          }
                          isSelected={filters.minStars === stars}
                          onClick={() => onChange({
                            ...filters,
                            minStars: filters.minStars === stars ? null : stars,
                            noRating: null
                          })}
                        />
                      ))}

                      <FilterButton
                        value={t('noRating')}
                        isSelected={filters.noRating === true}
                        onClick={() => onChange({
                          ...filters,
                          noRating: filters.noRating === true ? null : true,
                          minStars: null
                        })}
                      />

                      {/* User ratings filter */}
                      {user && (
                        <Box borderTop="1px" borderColor="gray.200" pt={1.5}>
                          <Text fontSize="sm" fontWeight="medium" color="gray.700" mb={1}>
                            {t('minUserStars')}
                          </Text>
                          <Stack gap={0.5}>
                            {[5, 4, 3, 2, 1].map((stars) => (
                              <FilterButton
                                key={`user-${stars}`}
                                value={
                                  <HStack gap={0.5}>
                                    {[...Array(stars)].map((_, i) => (
                                      <FaStar key={i} color="secondary.500" size={14} />
                                    ))}
                                  </HStack>
                                }
                                isSelected={filters.minUserStars === stars}
                                onClick={() => onChange({
                                  ...filters,
                                  minUserStars: filters.minUserStars === stars ? null : stars,
                                  noUserRating: null
                                })}
                                data-testid={`user-rating-${stars}`}
                              />
                            ))}

                            <FilterButton
                              value={t('noRating')}
                              isSelected={filters.noUserRating === true}
                              onClick={() => onChange({
                                ...filters,
                                noUserRating: filters.noUserRating === true ? null : true,
                                minUserStars: null
                              })}
                              data-testid="user-rating-none"
                            />
                          </Stack>
                        </Box>
                      )}

                      <Button
                        size="xs"
                        height="28px"
                        variant="ghost"
                        bg="transparent"
                        color="gray.700"
                        _hover={{
                          bg: 'gray.50',
                          color: 'gray.700'
                        }}
                        _active={{
                          bg: 'brand.500',
                          color: 'white',
                          transform: 'scale(0.98)'
                        }}
                        onClick={() => setShowAllStars(false)}
                        width="full"
                        fontSize="sm"
                        justifyContent="flex-start"
                        transition="all 0.2s"
                      >
                        {t('showLess')}
                      </Button>
                    </Stack>
                  </Collapsible.Content>
                </Collapsible.Root>
              </Stack>
            </Box>
          </VStack>
        )}
      </Box>
    </Box>
  )
}
