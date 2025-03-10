import {
    Box,
    Flex,
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
import { MdHome, MdLocationOn, MdSupervisorAccount } from 'react-icons/md'
import { useAuth } from '../hooks/useAuth'
import { useLoginToast } from '../hooks/useLoginToast'
import { useRatings } from '../hooks/useRatings'
import { useToast } from '../hooks/useToast'
import { useUserPreferences } from '../hooks/useUserPreferences'
import { useVisits } from '../hooks/useVisits'
import { supabase } from '../lib/supabaseClient'
import { PlaygroundWithCoordinates } from '../types/database.types'
import { Switch } from './ui/switch'
import { InfoTip } from './ui/toggle-tip'
import { Tooltip } from './ui/tooltip'

interface PlaygroundPopupProps {
  playground: PlaygroundWithCoordinates
  onVisitChange: (isVisited: boolean) => void
  onContentChange?: () => void
  onRatingChange: () => void
}

export const PlaygroundPopup = ({ playground, onVisitChange, onContentChange, onRatingChange }: PlaygroundPopupProps) => {
  const { t } = useTranslation()
  const { user, loading: authLoading } = useAuth()
  const toast = useToast()
  const { showLoginToast } = useLoginToast()
  const { visits, loading: visitsLoading, addVisit, removeVisit } = useVisits()
  const { rating, loading: ratingLoading, submitRating, togglePublic, refresh: refreshRating, setOptimisticRating } = useRatings(playground.id)
  const { preferences } = useUserPreferences()
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

  // Show login toast when component mounts if user is not logged in
  useEffect(() => {
    if (!authLoading && !user) {
      showLoginToast()
    }
  }, [user, authLoading, showLoginToast])

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

      // Optimistically update the local state
      const oldRating = rating
      // Use default public setting for new ratings
      const isPublic = oldRating?.userRating === null ? preferences.defaultPublicRatings : (oldRating?.isPublic ?? false)
      const optimisticRating = {
        ...rating,
        userRating: value,
        isPublic,
        // Only update public stats if the rating is public
        ...(isPublic && {
          avgRating: oldRating?.userRating === null
            ? (((oldRating?.avgRating || 0) * (oldRating?.totalRatings || 0) + value) / ((oldRating?.totalRatings || 0) + 1))
            : ((((oldRating?.avgRating || 0) * (oldRating?.totalRatings || 0)) - (oldRating?.userRating || 0) + value) / (oldRating?.totalRatings || 1)),
          totalRatings: oldRating?.userRating === null ? (oldRating?.totalRatings || 0) + 1 : oldRating?.totalRatings || 0
        })
      }
      setHoveredRating(null)
      setOptimisticRating(optimisticRating)

      // Now submit the rating with the visit_id
      await submitRating(value, isPublic, visitData.id)
      onContentChange?.()
      onRatingChange() // Call onRatingChange after submitting rating
      toast.showSuccess({
        title: t('playground.rating.success.title')
      })
    } catch (err) {
      // If there was an error, refresh the rating to get the correct state
      await refreshRating()
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
    <Box p={3} minW="300px" maxW="700px">
      {visitsLoading ? (
        <VStack align="stretch" gap={1} justify="center" minH="100px">
          <Spinner size="md" color="brand.500" alignSelf="center" />
        </VStack>
      ) : (
        <VStack align="stretch" gap={0}>
          <Flex justify="space-between" align="center" gap={2}>
            <Text
              fontSize="md"
              fontWeight="semibold"
              color="gray.700"
              truncate
              flex={1}
            >
              {playground.name || t('playground.unnamed')}
            </Text>
          </Flex>

          {/* Add style to hide Leaflet's default close button */}
          <style>
            {`
              .leaflet-popup-close-button {
                color: var(--chakra-colors-brand-600) !important;
              }
              .leaflet-popup-content {
                margin-top: 0px !important;
                margin-bottom: 0px !important;
                margin-left: 8px !important;
                margin-right: 8px !important;
              }
            `}
          </style>

          {/* Properties row with icons, rating, and visit switch */}
          <Flex justify="space-between" align="center">
            <HStack gap={3}>
              <Tooltip content={`${Math.abs(playground.latitude).toFixed(6)}°${playground.latitude >= 0 ? 'N' : 'S'}, ${Math.abs(playground.longitude).toFixed(6)}°${playground.longitude >= 0 ? 'E' : 'W'}`}>
                <Link
                  href={`https://www.google.com/maps/search/?api=1&query=${playground.latitude},${playground.longitude}`}
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
                      as={MdHome}
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

            <Box flex={1} minW={4} />

            {!ratingLoading && (
              <HStack gap={1} mr={8}>
                <Text fontSize="sm" fontWeight="medium" color="gray.600" whiteSpace="nowrap">
                  {rating?.avgRating ? Number(rating.avgRating).toFixed(1) : 'N/A'}
                </Text>
                <Icon as={FaStar} boxSize={4} color="gray.600" />
                <Text fontSize="sm" color="gray.500" whiteSpace="nowrap">
                  ({rating?.totalRatings || 0})
                </Text>
              </HStack>
            )}

            <Box>
              <HStack gap={2} align="center">
                <Text fontSize="sm" color={!user ? "gray.400" : "gray.600"}>
                  {t('playground.markVisited')}
                </Text>
                <Box
                  onClick={() => {
                    if (!user) {
                      showLoginToast()
                    }
                  }}
                  cursor={!user ? "pointer" : "default"}
                >
                  <Switch
                    size="md"
                    checked={hasVisited}
                    onCheckedChange={async () => {
                      if (!user) {
                        return
                      }
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
              </HStack>
            </Box>
          </Flex>

          {playground.description && (
            <Text
              fontSize="sm"
              fontWeight="semibold"
              color="gray.700"
              lineHeight="tall"
              whiteSpace="pre-wrap"
            >
              {renderFormattedDescription(playground.description)}
            </Text>
          )}

          {/* Rating section */}
          <Box>
            <Box borderBottom="1px solid" borderColor="gray.200" mb={2} />
            {ratingLoading ? (
              <Spinner size="md" color="brand.500" role="status" aria-label={t('playground.rating.loading')} />
            ) : (
              <HStack gap={2} justify="space-between" align="center">
                <HStack gap={0.5}>
                  {[1, 2, 3, 4, 5].map((value) => (
                    <Box
                      key={value}
                      as="button"
                      onClick={async (e: React.MouseEvent<HTMLDivElement>) => {
                        e.preventDefault()
                        e.stopPropagation()
                        if (!user) {
                          showLoginToast()
                          return
                        }

                        // If not visited, mark as visited first
                        if (!hasVisited) {
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
                        }

                        // Then handle the rating
                        handleRating(value, e as unknown as React.MouseEvent<HTMLButtonElement>)
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
                        <FaStar color={!user ? "var(--chakra-colors-gray-400)" : "var(--chakra-colors-secondary-500)"} size={20} />
                      ) : (
                        <FaRegStar color="var(--chakra-colors-gray-400)" size={20} />
                      )}
                    </Box>
                  ))}
                </HStack>
                <HStack gap={2} align="center">
                  <Text
                    fontSize="sm"
                    color={!user || !rating?.userRating ? "gray.400" : "gray.600"}
                  >
                    {t('playground.makePublic')}
                  </Text>
                  <InfoTip>
                    {t('playground.rating.publicExplanation')}
                  </InfoTip>
                  <Box
                    onClick={() => {
                      if (!user) {
                        showLoginToast()
                        return
                      }
                      if (!rating?.userRating) {
                        toast.showInfo({
                          title: t('playground.rating.title'),
                          description: t('playground.rating.requiredForPublic')
                        })
                      }
                    }}
                    cursor={(!user || !rating?.userRating) ? "pointer" : "default"}
                  >
                    <Switch
                      size="md"
                      checked={rating?.isPublic}
                      onCheckedChange={handleTogglePublic}
                      disabled={!user || !rating?.userRating}
                      aria-label={t('playground.makePublic')}
                    />
                  </Box>
                </HStack>
              </HStack>
            )}
          </Box>
        </VStack>
      )}
    </Box>
  )
}
