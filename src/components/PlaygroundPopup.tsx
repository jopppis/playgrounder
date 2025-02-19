import {
  Box,
  HStack,
  Spinner,
  Text,
  VStack
} from '@chakra-ui/react'
import { useEffect, useState } from 'react'
import { useTranslation } from 'react-i18next'
import { FaRegStar, FaStar } from 'react-icons/fa'
import { useAuth } from '../hooks/useAuth'
import { useRatings } from '../hooks/useRatings'
import { useToast } from '../hooks/useToast'
import { useVisits } from '../hooks/useVisits'
import { supabase } from '../lib/supabaseClient'
import { PlaygroundWithCoordinates } from '../types/database.types'
import { Switch } from './ui/switch'

interface PlaygroundPopupProps {
  playground: PlaygroundWithCoordinates
  onVisitChange: (isVisited: boolean) => void
  onContentChange?: () => void
}

export const PlaygroundPopup = ({ playground, onVisitChange, onContentChange }: PlaygroundPopupProps) => {
  const { t } = useTranslation()
  const { user } = useAuth()
  const toast = useToast()
  const { visits, loading: visitsLoading, addVisit, removeVisit } = useVisits()
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
      return
    }

    const result = await addVisit(playground.id)
    if (result.error) {
      toast.showError({
        title: t('common.error'),
        description: result.error
      })
      return
    }

    setHasVisited(true)
    onVisitChange(true)
    onContentChange?.()
    toast.showSuccess({
      title: t('playground.addVisit.title')
    })
  }

  const handleRemoveVisit = async () => {
    if (!user) return

    const result = await removeVisit(playground.id)
    if (result.error) {
      toast.showError({
        title: t('common.error'),
        description: result.error
      })
      return
    }

    // Reset local state
    setHasVisited(false)
    onVisitChange(false)
    await refreshRating() // Refresh ratings to clear the old rating
    onContentChange?.()
    toast.showSuccess({
      title: t('playground.removeVisit.title'),
    })
  }

  const handleRating = async (value: number, e: React.MouseEvent<HTMLButtonElement>) => {
    e.preventDefault()
    e.stopPropagation()

    if (!user) return

    try {
      // First ensure there's a visit record
      const { data: visitData, error: visitError } = await supabase
        .from('visits')
        .select('id')
        .eq('playground_id', playground.id)
        .eq('user_id', user.id)
        .single()

      if (visitError) throw visitError
      if (!visitData?.id) {
        throw new Error(t('playground.rating.error.noVisit'))
      }

      // Now submit the rating with the visit_id
      await submitRating(value, rating?.isPublic || false, visitData.id)
      onContentChange?.()
      toast.showSuccess({
        title: t('playground.rating.success.title')
      })
    } catch (err) {
      toast.showError({
        title: t('playground.rating.error.title'),
        description: err instanceof Error ? err.message : t('common.unknownError')
      })
    }
  }

  const handleTogglePublic = async () => {
    try {
      const wasPublic = rating?.isPublic
      await togglePublic()
      toast.showSuccess({
        title: t('playground.rating.visibility.success.title'),
        description: wasPublic
          ? t('playground.rating.visibility.success.private')
          : t('playground.rating.visibility.success.public')
      })
    } catch (err) {
      toast.showError({
        title: t('playground.rating.visibility.error.title'),
        description: err instanceof Error ? err.message : t('common.unknownError')
      })
    }
  }

  const renderFormattedDescription = (text: string) => {
    // Replace \n with actual newlines
    const processedText = text.replace(/\\n/g, '\n')

    // Split by newlines to preserve them
    const lines = processedText.split('\n')

    return lines.map((line, lineIndex) => (
      <Text as="span" key={lineIndex} display="inline">
        {line}
        {lineIndex < lines.length - 1 && '\n'}
      </Text>
    ))
  }

  return (
    <Box p={2} minW="300px" maxW="400px">
      {visitsLoading ? (
        <VStack align="stretch" gap={1.5} justify="center" minH="100px">
          <Spinner size="md" color="brand.500" alignSelf="center" />
        </VStack>
      ) : (
        <VStack align="stretch" gap={1.5}>
          <HStack justify="space-between" align="center" gap={2}>
            <Text fontWeight="bold" color="gray.700">{playground.name}</Text>
            {!ratingLoading && rating?.avgRating && (
              <Text fontSize="sm" color="#828282">
                {t('playground.avgRating', {
                  rating: Number(rating.avgRating).toFixed(1),
                  count: rating.totalRatings
                })}
              </Text>
            )}
          </HStack>
          <Text fontSize="sm" color="gray.500">
            {t('playground.supervision.label')}: {playground.has_supervised_activities ? t('playground.supervision.supervised') : t('playground.supervision.unsupervised')}
          </Text>
          {playground.description && (
            <Text fontSize="sm" color="gray.700" lineHeight="short" whiteSpace="pre-wrap">
              {renderFormattedDescription(playground.description)}
            </Text>
          )}
          {playground.address && (
            <Text fontSize="sm" color="gray.500" lineHeight="short">
              {playground.address}
            </Text>
          )}

          {/* Visit switch */}
          <HStack justify="space-between" align="center">
            <Text fontSize="sm">{t('playground.markVisited')}</Text>
            <Switch
              size="md"
              checked={hasVisited}
              onCheckedChange={async () => {
                if (!user) return;
                if (hasVisited) {
                  await handleRemoveVisit();
                } else {
                  await handleVisit();
                }
              }}
              disabled={!user}
              aria-label={t('playground.markVisited')}
            />
          </HStack>

          {/* Rating section */}
          {hasVisited && (
            <Box>
              <Text fontWeight="bold" mb={2}>
                {t('playground.rating.title')}
              </Text>
              {ratingLoading ? (
                <Spinner size="sm" color="brand.500" role="status" aria-label={t('playground.rating.loading')} />
              ) : (
                <>
                  <HStack gap={0.5} mb={1} justify="space-between" align="center">
                    <HStack gap={0.5}>
                      {[1, 2, 3, 4, 5].map((value) => (
                        <Box
                          key={value}
                          as="button"
                          onClick={(e: React.MouseEvent<HTMLDivElement>) => {
                            e.preventDefault();
                            e.stopPropagation();
                            handleRating(value, e as unknown as React.MouseEvent<HTMLButtonElement>);
                          }}
                          onMouseEnter={() => setHoveredRating(value)}
                          onMouseLeave={() => setHoveredRating(null)}
                          aria-disabled={!user}
                          aria-label={t('playground.rating.buttonLabel', { count: value })}
                          role="button"
                          cursor={user ? 'pointer' : 'not-allowed'}
                          opacity={!user ? 0.5 : 1}
                          transition="all 0.2s"
                          _hover={user ? {
                            transform: 'scale(1.2)',
                            '& > *': { color: 'secondary.500' }
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
                            <FaStar color="var(--chakra-colors-secondary-500)" size={20} />
                          ) : (
                            <FaRegStar color="var(--chakra-colors-gray-400)" size={20} />
                          )}
                        </Box>
                      ))}
                    </HStack>
                  </HStack>

                  {/* Public rating switch */}
                  <HStack justify="space-between" align="center" mt={2}>
                    <Text fontSize="sm">{t('playground.makePublic')}</Text>
                    <Switch
                      size="md"
                      checked={rating?.isPublic}
                      onCheckedChange={async () => {
                        if (!user) return;
                        await handleTogglePublic();
                      }}
                      disabled={!user || rating?.userRating === null}
                      aria-label={t('playground.makePublic')}
                    />
                  </HStack>
                </>
              )}
            </Box>
          )}
        </VStack>
      )}
    </Box>
  )
}
