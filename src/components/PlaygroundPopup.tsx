import {
  Box,
  Button,
  HStack,
  Spinner,
  Text,
  VStack
} from '@chakra-ui/react'
import { Switch } from '@chakra-ui/switch'
import { useEffect, useState } from 'react'
import { useTranslation } from 'react-i18next'
import { FaRegStar, FaStar } from 'react-icons/fa'
import { useAuth } from '../hooks/useAuth'
import { useRatings } from '../hooks/useRatings'
import { useVisits } from '../hooks/useVisits'
import { supabase } from '../lib/supabaseClient'
import { PlaygroundWithCoordinates } from '../types/database.types'

interface PlaygroundPopupProps {
  playground: PlaygroundWithCoordinates
  onVisitChange: (isVisited: boolean) => void
  onContentChange?: () => void
}

export const PlaygroundPopup = ({ playground, onVisitChange, onContentChange }: PlaygroundPopupProps) => {
  const { t } = useTranslation()
  const { user } = useAuth()
  const { visits, loading: visitsLoading } = useVisits()
  const { rating, loading: ratingLoading, submitRating, togglePublic, refresh: refreshRating } = useRatings(playground.id)
  const [hoveredRating, setHoveredRating] = useState<number | null>(null)

  // Use useEffect to update hasVisited when visits change
  const [hasVisited, setHasVisited] = useState(false)
  useEffect(() => {
    if (!visitsLoading) {
      setHasVisited(visits.some(visit => visit.playground_id === playground.id))
      onContentChange?.()
    }
  }, [visits, playground.id, onContentChange, visitsLoading])

  // Update popup when rating changes
  useEffect(() => {
    onContentChange?.()
  }, [rating, ratingLoading, onContentChange])

  // Update popup when hover state changes
  useEffect(() => {
    onContentChange?.()
  }, [hoveredRating, onContentChange])

  const handleVisit = async () => {
    if (!user) {
      console.warn(t('playground.loginRequired'))
      return
    }

    try {
      const { error } = await supabase
        .from('visits')
        .insert({
          playground_id: playground.id,
          user_id: user.id,
          visited_at: new Date().toISOString(),
        })

      if (error) throw error

      setHasVisited(true)
      onVisitChange(true)
      console.log(t('playground.visitMarked'), t('playground.clickToRate'))
    } catch (err) {
      console.error(t('common.error'), err instanceof Error ? err.message : t('common.unknownError'))
    }
  }

  const handleRemoveVisit = async (e: React.MouseEvent<HTMLButtonElement>) => {
    if (e) {
      e.preventDefault()
      e.stopPropagation()
    }

    if (!user) return

    try {
      // First delete any existing ratings
      const { error: ratingError } = await supabase
        .from('ratings')
        .delete()
        .match({
          playground_id: playground.id,
          user_id: user.id
        })

      if (ratingError) throw ratingError

      // Then delete the visit
      const { error: visitError } = await supabase
        .from('visits')
        .delete()
        .match({
          playground_id: playground.id,
          user_id: user.id
        })

      if (visitError) throw visitError

      // Reset local state
      setHasVisited(false)
      onVisitChange(false)
      await refreshRating() // Refresh ratings to clear the old rating
      console.log(t('playground.visitRemoved'))
    } catch (err) {
      console.error(t('common.error'), err instanceof Error ? err.message : t('common.unknownError'))
    }
  }

  const handleRating = async (value: number, e: React.MouseEvent<HTMLButtonElement>) => {
    // Prevent the click event from bubbling up and closing the popup
    e.preventDefault()
    e.stopPropagation()

    if (!user) {
      console.warn(t('playground.loginRequired'))
      return
    }

    try {
      await submitRating(value, rating?.isPublic || false)
      console.log(t('playground.ratingSubmitted'))
    } catch (err) {
      console.error(t('common.error'), err instanceof Error ? err.message : t('common.unknownError'))
    }
  }

  const handleTogglePublic = async (e?: React.SyntheticEvent) => {
    // Prevent the click event from bubbling up and closing the popup
    if (e) {
      e.preventDefault()
      e.stopPropagation()
    }

    try {
      await togglePublic()
      console.log(rating?.isPublic ? t('playground.ratingPrivate') : t('playground.ratingPublic'))
    } catch (err) {
      console.error(t('common.error'), err instanceof Error ? err.message : t('common.unknownError'))
    }
  }

  const renderFormattedDescription = (text: string) => {
    // Replace \n with actual newlines
    const processedText = text.replace(/\\n/g, '\n')

    // Split by newlines to preserve them
    const lines = processedText.split('\n')

    return lines.map((line, lineIndex) => (
      <Box key={lineIndex} display="inline">
        {line}
        {lineIndex < lines.length - 1 && '\n'}
      </Box>
    ))
  }

  return (
    <Box p={2} minW="300px" maxW="400px">
      {visitsLoading ? (
        <VStack align="stretch" gap={1.5} justify="center" minH="100px">
          <Spinner size="md" color="#4A90E2" alignSelf="center" />
        </VStack>
      ) : (
        <VStack align="stretch" gap={1.5}>
          <HStack justify="space-between" align="center" gap={2}>
            <Text fontWeight="bold" color="#2D3E50">{playground.name}</Text>
            {!ratingLoading && rating?.avgRating && (
              <Text fontSize="sm" color="#828282">
                {t('playground.avgRating', {
                  rating: Number(rating.avgRating).toFixed(1),
                  count: rating.totalRatings
                })}
              </Text>
            )}
          </HStack>
          <Text fontSize="sm" color="gray.600">
            {t('playground.serviceLevel')}: {playground.service_level === 1 ? t('playground.level1') : t('playground.level2')}
          </Text>
          {playground.description && (
            <Text fontSize="sm" color="#2D3E50" lineHeight="short" whiteSpace="pre-wrap">
              {renderFormattedDescription(playground.description)}
            </Text>
          )}
          {playground.address && (
            <Text fontSize="sm" color="#828282" lineHeight="short">
              {playground.address}
            </Text>
          )}

          {/* Visit button */}
          {!hasVisited ? (
            <Button
              size="sm"
              bg="#4A90E2"
              color="white"
              _hover={{ bg: '#3A7BC2' }}
              _active={{ bg: '#2A66A2' }}
              onClick={handleVisit}
              disabled={!user}
              h="28px"
            >
              {t('playground.markVisited')}
            </Button>
          ) : (
            <Button
              size="sm"
              bg="#4A90E2"
              color="white"
              _hover={{ bg: '#3A7BC2' }}
              _active={{ bg: '#2A66A2' }}
              onClick={handleRemoveVisit}
              h="28px"
            >
              <Text mr={2}>✓</Text>
              {t('playground.removeVisit')}
            </Button>
          )}

          {/* Rating section */}
          {hasVisited && (
            <Box>
              <Text fontSize="sm" mb={0.5} color="#2D3E50" lineHeight="short">
                {t('playground.rating')}
              </Text>
              {ratingLoading ? (
                <Spinner size="sm" color="#4A90E2" />
              ) : (
                <>
                  <HStack gap={0.5} mb={1} justify="space-between" align="center">
                    <HStack gap={0.5}>
                      {[1, 2, 3, 4, 5].map((value) => (
                        <Box
                          key={value}
                          as="button"
                          onClick={(e) => handleRating(value, e as React.MouseEvent<HTMLButtonElement>)}
                          onMouseEnter={() => setHoveredRating(value)}
                          onMouseLeave={() => setHoveredRating(null)}
                          disabled={!user}
                          cursor={user ? 'pointer' : 'not-allowed'}
                          opacity={!user ? 0.5 : 1}
                          transition="all 0.2s"
                          _hover={user ? {
                            transform: 'scale(1.2)',
                            '& > *': { color: '#FF9F43' }
                          } : undefined}
                          display="flex"
                          alignItems="center"
                          justifyContent="center"
                          p={0}
                          bg="transparent"
                          border="none"
                          outline="none"
                          _focus={{ outline: 'none' }}
                        >
                          {value <= (hoveredRating || rating?.userRating || 0) ? (
                            <FaStar color="#FF9F43" size={20} />
                          ) : (
                            <FaRegStar color="#828282" size={20} />
                          )}
                        </Box>
                      ))}
                    </HStack>
                  </HStack>

                  {/* Public rating toggle */}
                  {rating?.userRating !== null && (
                    <Button
                      mt={1}
                      size="sm"
                      bg={rating?.isPublic ? '#4A90E2' : 'white'}
                      color={rating?.isPublic ? 'white' : '#4A90E2'}
                      borderColor="#4A90E2"
                      border="1px solid"
                      h="28px"
                      minH="28px"
                      _hover={{ bg: rating?.isPublic ? '#3A7BC2' : '#EDF2F7' }}
                      _active={{ bg: rating?.isPublic ? '#2A66A2' : '#E2E8F0' }}
                      onClick={(e) => {
                        e.stopPropagation()
                        handleTogglePublic(e)
                      }}
                      onMouseDown={(e) => e.stopPropagation()}
                    >
                      <Switch
                        size="sm"
                        isChecked={rating?.isPublic}
                        sx={{
                          '& span[data-checked]': { bg: 'white !important' },
                          '& span:not([data-checked])': { bg: '#4A90E2 !important' }
                        }}
                        mr={2}
                      />
                      {t('playground.makePublic')}
                    </Button>
                  )}
                </>
              )}
            </Box>
          )}
        </VStack>
      )}
    </Box>
  )
}
