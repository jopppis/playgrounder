import {
  Box,
  Button,
  HStack,
  Stack,
  Text,
  VStack
} from '@chakra-ui/react'
import { Collapse } from '@chakra-ui/transition'
import { useEffect, useRef, useState } from 'react'
import { useTranslation } from 'react-i18next'
import { FaStar } from 'react-icons/fa'
import { HiBars3 } from 'react-icons/hi2'
import { useAuth } from '../hooks/useAuth'

export interface FilterOptions {
  visitStatus: 'all' | 'visited' | 'unvisited'
  minStars: number | null
  serviceLevel: number | null
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

  const FilterButton = ({ value, isSelected, onClick }: {
    value: string | React.ReactElement,
    isSelected: boolean,
    onClick: () => void
  }) => (
    <Button
      size="xs"
      height="28px"
      variant="ghost"
      bg={isSelected ? '#4A90E2' : 'transparent'}
      color={isSelected ? 'white' : '#2D3E50'}
      _hover={{
        bg: isSelected ? '#4A90E2' : 'gray.50',
        color: isSelected ? 'white' : '#2D3E50'
      }}
      _active={{
        bg: '#4A90E2',
        color: 'white',
        transform: 'scale(0.98)'
      }}
      transition="all 0.2s"
      onClick={onClick}
      width="full"
      fontSize="sm"
      justifyContent="flex-start"
    >
      {value}
    </Button>
  )

  return (
    <Box position="absolute" top={2} left="80px" zIndex={1000} ref={filterRef}>
      <Box bg="#F9F9F9" borderRadius="md" boxShadow="base" width="250px">
        <Button
          bg="transparent"
          color="#2D3E50"
          _hover={{ bg: 'gray.50' }}
          _active={{ bg: 'gray.100' }}
          fontSize="sm"
          size="sm"
          onClick={() => setIsOpen(!isOpen)}
          width="100%"
          px={3}
        >
          <HStack width="100%" justify="space-between">
            <Text>{t('filterPlaygrounds')}</Text>
            <HiBars3 size={20} />
          </HStack>
        </Button>

        {isOpen && (
          <VStack align="stretch" p={2} spacing={1.5} bg="#F9F9F9" width="100%">
            <Box>
              <Text fontSize="sm" fontWeight="medium" color="#2D3E50" mb={1}>
                {t('playground.serviceLevel')}
              </Text>
              <Stack spacing={0.5}>
                <FilterButton
                  value={t('playground.level1')}
                  isSelected={filters.serviceLevel === 1}
                  onClick={() => onChange({
                    ...filters,
                    serviceLevel: filters.serviceLevel === 1 ? null : 1
                  })}
                />
                <FilterButton
                  value={t('playground.level2')}
                  isSelected={filters.serviceLevel === 2}
                  onClick={() => onChange({
                    ...filters,
                    serviceLevel: filters.serviceLevel === 2 ? null : 2
                  })}
                />
              </Stack>
            </Box>

            {user && (
              <Box borderTop="1px" borderColor="gray.200" pt={1.5}>
                <Text fontSize="sm" fontWeight="medium" color="#2D3E50" mb={1}>
                  {t('visitStatus')}
                </Text>
                <Stack spacing={0.5}>
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
              <Text fontSize="sm" fontWeight="medium" color="#2D3E50" mb={1}>
                {t('minStars')}
              </Text>
              <Stack spacing={0.5}>
                {[5, 4].map((stars) => (
                  <FilterButton
                    key={stars}
                    value={
                      <HStack spacing={0.5}>
                        {[...Array(stars)].map((_, i) => (
                          <FaStar key={i} color="#FF9F43" size={14} />
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
                    color="#2D3E50"
                    _hover={{
                      bg: 'gray.50',
                      color: '#2D3E50'
                    }}
                    _active={{
                      bg: '#4A90E2',
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
                  <Stack spacing={0.5}>
                    {[3, 2, 1].map((stars) => (
                      <FilterButton
                        key={stars}
                        value={
                          <HStack spacing={0.5}>
                            {[...Array(stars)].map((_, i) => (
                              <FaStar key={i} color="#FF9F43" size={14} />
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
                    <Button
                      size="xs"
                      height="28px"
                      variant="ghost"
                      bg="transparent"
                      color="#2D3E50"
                      _hover={{
                        bg: 'gray.50',
                        color: '#2D3E50'
                      }}
                      _active={{
                        bg: '#4A90E2',
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
