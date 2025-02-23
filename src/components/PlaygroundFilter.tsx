import {
  Box,
  Button,
  HStack,
  NativeSelect,
  Stack,
  Text,
  VStack,
  useBreakpointValue
} from '@chakra-ui/react'
import { Collapse } from '@chakra-ui/transition'
import { useEffect, useMemo, useRef, useState } from 'react'
import { useTranslation } from 'react-i18next'
import { FaStar } from 'react-icons/fa'
import { HiAdjustmentsHorizontal } from 'react-icons/hi2'
import { useAuth } from '../hooks/useAuth'
import { usePlaygrounds } from '../hooks/usePlaygrounds'

export interface FilterOptions {
  visitStatus: 'all' | 'visited' | 'unvisited'
  minStars: number | null
  minUserStars: number | null
  hasSupervised: boolean | null
  city: string | null
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
      ...uniqueCities.map(city => ({
        label: city,
        value: city.toLowerCase()
      }))
    ]
  }, [playgrounds, t])

  const filterPosition = useBreakpointValue({
    base: {
      top: '2',
      left: '24px',
      width: isOpen ? '250px' : '40px',
      maxWidth: isOpen ? '250px' : '40px',
      right: 'auto',
      transition: 'width 0.2s, max-width 0.2s'
    },
    sm: { top: '2', left: '24px', width: '300px', maxWidth: '300px', right: 'auto' },
    md: { top: '2', left: '24px', width: '350px', maxWidth: '350px', right: 'auto' }
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
      size="xs"
      height="28px"
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
      <Box bg="gray.50" borderRadius="md" boxShadow="base" width="100%" position="relative">
        <Button
          bg="transparent"
          color="gray.700"
          _hover={{ bg: 'gray.50' }}
          _active={{ bg: 'gray.100' }}
          fontSize="sm"
          onClick={() => setIsOpen(!isOpen)}
          {...buttonStyle}
          position="relative"
          zIndex="2"
          aria-label={t('filterPlaygrounds')}
        >
          {showButtonText ? (
            <HStack width="100%" justify="space-between">
              <Text>{t('filterPlaygrounds')}</Text>
              <HiAdjustmentsHorizontal size={20} />
            </HStack>
          ) : (
            <HiAdjustmentsHorizontal size={20} />
          )}
        </Button>

        {isOpen && (
          <VStack
            align="stretch"
            p={2}
            gap={1.5}
            bg="gray.50"
            width="100%"
            position={{ base: 'absolute', sm: 'static' }}
            left={{ base: '0', sm: 'auto' }}
            top={{ base: '38px', sm: 'auto' }}
            borderRadius="0 0 md md"
            boxShadow="base"
            borderTop="1px"
            borderColor="gray.200"
            zIndex="1"
          >
            <Box>
              <Text fontSize="sm" fontWeight="medium" color="gray.700" mb={1}>
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
                      visitStatus: filters.visitStatus === 'visited' ? 'all' : 'visited'
                    })}
                  />
                  <FilterButton
                    value={t('unvisited')}
                    isSelected={filters.visitStatus === 'unvisited'}
                    onClick={() => onChange({
                      ...filters,
                      visitStatus: filters.visitStatus === 'unvisited' ? 'all' : 'unvisited'
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
                      minStars: filters.minStars === stars ? null : stars
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

                <Collapse in={showAllStars}>
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
                          minStars: filters.minStars === stars ? null : stars
                        })}
                      />
                    ))}

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
                                minUserStars: filters.minUserStars === stars ? null : stars
                              })}
                              data-testid={`user-rating-${stars}`}
                            />
                          ))}
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
                </Collapse>
              </Stack>
            </Box>
          </VStack>
        )}
      </Box>
    </Box>
  )
}
