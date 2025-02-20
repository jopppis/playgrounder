import {
  Box,
  HStack,
  Icon,
  Link,
  Spinner,
  Text,
  VStack
} from '@chakra-ui/react'
import { useEffect, useState } from 'react'
import { useTranslation } from 'react-i18next'
import { FaRegStar, FaStar } from 'react-icons/fa'
import { MdLocationOn, MdSupervisorAccount } from 'react-icons/md'
import { useAuth } from '../hooks/useAuth'
import { useRatings } from '../hooks/useRatings'
import { useToast } from '../hooks/useToast'
import { useVisits } from '../hooks/useVisits'
import { supabase } from '../lib/supabaseClient'
import { PlaygroundWithCoordinates } from '../types/database.types'
import { Switch } from './ui/switch'
import { Tooltip } from './ui/tooltip'

interface PlaygroundPopupProps {
  playground: PlaygroundWithCoordinates
  onVisitChange: (isVisited: boolean) => void
  onContentChange?: () => void
  onRatingChange: () => void
}

export const PlaygroundPopup = ({ playground, onVisitChange, onContentChange, onRatingChange }: PlaygroundPopupProps) => {
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
      onRatingChange() // Call onRatingChange after submitting rating
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
      onRatingChange() // Call onRatingChange after toggling public status
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
        <VStack align="stretch" gap={1} justify="center" minH="100px">
          <Spinner size="md" color="brand.500" alignSelf="center" />
        </VStack>
      ) : (
        <VStack align="stretch" gap={1}>
          <HStack justify="space-between" align="start" gap={2}>
            <Text fontWeight="bold" color="gray.700" truncate flex={1}>{playground.name}</Text>
            {!ratingLoading && rating?.avgRating && (
              <Text fontSize="sm" color="#828282" whiteSpace="nowrap">
                {t('playground.avgRating', {
                  rating: Number(rating.avgRating).toFixed(1),
                  count: rating.totalRatings
                })}
              </Text>
            )}
          </HStack>

          {/* Properties row with icons */}
          <HStack justify="space-between" align="center">
            <HStack gap={3}>
              {playground.address && (
                <Tooltip content={playground.address}>
                  <Link
                    href={`https://www.google.com/maps/search/?api=1&query=${encodeURIComponent(playground.address)}`}
                    target="_blank"
                    rel="noopener noreferrer"
                    display="flex"
                    alignItems="center"
                    _hover={{ color: 'brand.500' }}
                  >
                    <Icon
                      as={MdLocationOn}
                      boxSize={5}
                      color="gray.600"
                      transition="color 0.2s"
                      _hover={{ color: 'inherit' }}
                    />
                  </Link>
                </Tooltip>
              )}
              {playground.has_supervised_activities && (
                <Tooltip content={t('playground.supervision.supervised')}>
                  <Box as="span">
                    <Icon
                      as={MdSupervisorAccount}
                      boxSize={5}
                      color="gray.600"
                    />
                  </Box>
                </Tooltip>
              )}
            </HStack>

            <HStack gap={2} align="center">
              <Text fontSize="sm">{t('playground.markVisited')}</Text>
              {!user ? (
                <Tooltip content={t('playground.login.required')}>
                  <Box>
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
                  </Box>
                </Tooltip>
              ) : (
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
              )}
            </HStack>
          </HStack>

          {playground.description && (
            <Text fontSize="sm" color="gray.700" lineHeight="short" whiteSpace="pre-wrap">
              {renderFormattedDescription(playground.description)}
            </Text>
          )}

          {/* Rating section */}
          {hasVisited && (
            <Box>
              {ratingLoading ? (
                <Spinner size="sm" color="brand.500" role="status" aria-label={t('playground.rating.loading')} />
              ) : (
                <HStack gap={2} justify="space-between" align="center">
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
                  <HStack gap={2} align="center">
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
                </HStack>
              )}
            </Box>
          )}
        </VStack>
      )}
    </Box>
  )
}
