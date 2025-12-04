import { Box, Button, Flex, HStack, Icon, Link, Spinner, Text, VStack } from '@chakra-ui/react';
import { useEffect, useState } from 'react';
import { useTranslation } from 'react-i18next';
import { FaRegStar, FaStar } from 'react-icons/fa';
import { HiPencil } from 'react-icons/hi2';
import { MdLocationOn, MdMap, MdSearch, MdSupervisorAccount } from 'react-icons/md';
import { useAuth } from '../hooks/useAuth';
import { useLoginToast } from '../hooks/useLoginToast';
import { useRatings } from '../hooks/useRatings';
import { useToast } from '../hooks/useToast';
import { useUserPreferences } from '../hooks/useUserPreferences';
import { useVisits } from '../hooks/useVisits';
import { supabase } from '../lib/supabaseClient';
import { PlaygroundWithCoordinates } from '../types/database.types';
import EditPlaygroundModal from './Playground/EditPlaygroundModal';
import { Switch } from './ui/switch';
import { InfoTip } from './ui/toggle-tip';
import { Tooltip } from './ui/tooltip';

// Centralized device detection for map links
function isMobileDevice() {
  if (typeof navigator === 'undefined') return false;
  return /Android|iPhone|iPad|iPod|Opera Mini|IEMobile|Mobile/i.test(navigator.userAgent);
}

function isIOS() {
  if (typeof navigator === 'undefined') return false;
  return /iPhone|iPad|iPod/i.test(navigator.userAgent);
}

function getMapLink(lat: number, lng: number) {
  if (isIOS()) {
    // Apple Maps
    return `http://maps.apple.com/?ll=${lat},${lng}`;
  } else if (isMobileDevice()) {
    // Android or other mobile: geo URI
    return `geo:${lat},${lng}`;
  } else {
    // Desktop: Google Maps
    return `https://www.google.com/maps/search/?api=1&query=${lat},${lng}`;
  }
}

function getSearchByNameLink(name: string, lat: number, lng: number) {
  if (isIOS()) {
    // Apple Maps with query
    return `http://maps.apple.com/?q=${encodeURIComponent(name)}&ll=${lat},${lng}`;
  } else if (isMobileDevice()) {
    // Android or other mobile: geo URI with query
    return `geo:${lat},${lng}?q=${encodeURIComponent(name)}`;
  } else {
    // Desktop: Google Maps with query and near
    return getGoogleMapsSearchLink(name, lat, lng);
  }
}

function getGoogleMapsSearchLink(name: string, lat: number, lng: number) {
  // Google Maps search link for all platforms
  return `https://www.google.com/maps/search/?api=1&query=${encodeURIComponent(name)}%20near%20${lat},${lng}`;
}

interface PlaygroundPopupProps {
  playground: PlaygroundWithCoordinates;
  onVisitChange: (isVisited: boolean) => void;
  onContentChange?: () => void;
  onRatingChange: () => void;
  editMode?: boolean;
}

export const PlaygroundPopup = ({
  playground,
  onVisitChange,
  onContentChange,
  onRatingChange,
  editMode = false,
}: PlaygroundPopupProps) => {
  const { t } = useTranslation();
  const { user, loading: authLoading } = useAuth();
  const toast = useToast();
  const { showLoginToast } = useLoginToast();
  const { visits, loading: visitsLoading, addVisit, removeVisit } = useVisits();
  const {
    rating,
    loading: ratingLoading,
    submitRating,
    togglePublic,
    clearRating,
  } = useRatings(playground.id, playground.avg_rating, playground.total_ratings);
  const { preferences } = useUserPreferences();
  const [hoveredRating, setHoveredRating] = useState<number | null>(null);
  const [showEditModal, setShowEditModal] = useState(false);
  const [hasVisited, setHasVisited] = useState(false);

  // Reset states when user changes
  useEffect(() => {
    // Only reset if we're sure there's no user (not during loading)
    if (!user && !authLoading) {
      setHoveredRating(null);
    }
  }, [user, authLoading]);

  // Use useEffect to update hasVisited when visits change
  useEffect(() => {
    if (!visitsLoading && user) {
      const newHasVisited = visits.some((visit) => visit.playground_id === playground.id);
      // Only update if actually different to avoid unnecessary re-renders
      if (newHasVisited !== hasVisited) {
        setHasVisited(newHasVisited);
        onVisitChange(newHasVisited);
        onContentChange?.();
      }
    } else if (!user && !authLoading && hasVisited) {
      setHasVisited(false);
      onVisitChange(false);
      onContentChange?.();
    }
  }, [
    visits,
    playground.id,
    onContentChange,
    visitsLoading,
    user,
    authLoading,
    hasVisited,
    onVisitChange,
  ]);

  // Update popup when rating changes
  useEffect(() => {
    onContentChange?.();
    onRatingChange();
  }, [rating, ratingLoading, onContentChange, onRatingChange]);

  // Update popup when hover state changes
  useEffect(() => {
    onContentChange?.();
  }, [hoveredRating, onContentChange]);

  // Show login toast when component mounts if user is not logged in
  useEffect(() => {
    if (!authLoading && !user) {
      showLoginToast();
    }
  }, [user, authLoading, showLoginToast]);

  const handleVisit = async () => {
    if (!user) {
      return;
    }

    const result = await addVisit(playground.id);
    if (result.error) {
      toast.showError({
        title: t('common.error'),
        description: result.error,
      });
      return;
    }

    toast.showSuccess({
      title: t('playground.addVisit.title'),
    });
  };

  const handleRemoveVisit = async () => {
    if (!user) return;

    const result = await removeVisit(playground.id);
    if (result.error) {
      toast.showError({
        title: t('common.error'),
        description: result.error,
      });
      return;
    }

    clearRating();
    toast.showSuccess({
      title: t('playground.removeVisit.title'),
    });
  };

  const handleRating = async (
    value: number,
    e: React.MouseEvent<HTMLButtonElement>,
    providedVisitId?: string,
  ) => {
    e.preventDefault();
    e.stopPropagation();

    if (!user) return;

    try {
      // Use provided visit ID if available, otherwise query the database
      let visitId = providedVisitId;
      if (!visitId) {
        const { data: visitData, error: visitError } = await supabase
          .from('visits')
          .select('id')
          .eq('playground_id', playground.id)
          .eq('user_id', user.id)
          .single();

        if (visitError) throw visitError;
        if (!visitData?.id) {
          throw new Error(t('playground.rating.error.noVisit'));
        }
        visitId = visitData.id;
      }

      // Use default public setting for new ratings
      const isPublic =
        rating?.userRating === null
          ? preferences.defaultPublicRatings
          : (rating?.isPublic ?? false);
      setHoveredRating(null);

      // Submit the rating
      await submitRating(value, isPublic, visitId);
      toast.showSuccess({
        title: t('playground.rating.success.title'),
      });
    } catch (err) {
      toast.showError({
        title: t('playground.rating.error.title'),
        description: err instanceof Error ? err.message : t('common.unknownError'),
      });
    }
  };

  const handleTogglePublic = async () => {
    try {
      const wasPublic = rating?.isPublic;
      await togglePublic();
      toast.showSuccess({
        title: t('playground.rating.visibility.success.title'),
        description: wasPublic
          ? t('playground.rating.visibility.success.private')
          : t('playground.rating.visibility.success.public'),
      });
    } catch (err) {
      toast.showError({
        title: t('playground.rating.visibility.error.title'),
        description: err instanceof Error ? err.message : t('common.unknownError'),
      });
    }
  };

  return (
    <>
      <Box minW="350px" maxW="max(350px, 80vw)" overflow="hidden">
        {visitsLoading ? (
          <VStack align="stretch" gap={1} justify="center" minH="100px" p={4}>
            <Spinner size="md" color="brand.500" alignSelf="center" />
          </VStack>
        ) : (
          <VStack align="stretch" gap={0}>
            {/* Banner with playground name */}
            <Box
              bg="linear-gradient(135deg, var(--chakra-colors-brand-500) 0%, var(--chakra-colors-brand-600) 100%)"
              pt={1.5}
              pb={0}
              mx={-1}
              px={1}
            >
              <Flex justify="space-between" align="center" px={4}>
                <Text
                  fontSize="lg"
                  fontWeight="bold"
                  color="white"
                  flex={1}
                  lineHeight="1.3"
                  pr={4}
                >
                  {playground.name || t('playground.unnamed')}
                </Text>
                {playground.has_supervised_activities && (
                  <Tooltip content={t('playground.supervision.supervised')}>
                    <Box as="span" flexShrink={0}>
                      <Icon as={MdSupervisorAccount} boxSize={6} color="white" />
                    </Box>
                  </Tooltip>
                )}
              </Flex>
            </Box>

            {/* Action Buttons - Map and Search */}
            <Box
              display="grid"
              gridTemplateColumns={
                playground.name && isIOS()
                  ? 'repeat(3, 1fr)'
                  : playground.name
                    ? 'repeat(2, 1fr)'
                    : '1fr'
              }
              gap={2}
              p={3}
              bg="white"
            >
              <Tooltip
                content={t('playground.showLocationOnMaps', {
                  coordinates: `${Math.abs(playground.latitude).toFixed(6)}°${playground.latitude >= 0 ? 'N' : 'S'}, ${Math.abs(playground.longitude).toFixed(6)}°${playground.longitude >= 0 ? 'E' : 'W'}`,
                })}
              >
                <Link
                  href={getMapLink(playground.latitude, playground.longitude)}
                  target="_blank"
                  rel="noopener noreferrer"
                  _hover={{ textDecoration: 'none' }}
                >
                  <Button
                    size="sm"
                    variant="solid"
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
                    width="100%"
                    display="flex"
                    alignItems="center"
                    justifyContent="center"
                    gap={2}
                  >
                    <Icon as={MdLocationOn} boxSize={5} />
                    <Text fontSize="xs" fontWeight="medium">
                      {t('playground.locationInMaps')}
                    </Text>
                  </Button>
                </Link>
              </Tooltip>
              {playground.name && (
                <Tooltip content={t('playground.searchOnMapsByName', { name: playground.name })}>
                  <Link
                    href={getSearchByNameLink(
                      playground.name,
                      playground.latitude,
                      playground.longitude,
                    )}
                    target="_blank"
                    rel="noopener noreferrer"
                    _hover={{ textDecoration: 'none' }}
                  >
                    <Button
                      size="sm"
                      variant="solid"
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
                      width="100%"
                      display="flex"
                      alignItems="center"
                      justifyContent="center"
                      gap={2}
                    >
                      <Icon as={MdSearch} boxSize={5} />
                      <Text fontSize="xs" fontWeight="medium">
                        {t('playground.searchOnMaps')}
                      </Text>
                    </Button>
                  </Link>
                </Tooltip>
              )}
              {playground.name && isIOS() && (
                <Tooltip
                  content={t('playground.searchOnGoogleMapsByName', { name: playground.name })}
                >
                  <Link
                    href={getGoogleMapsSearchLink(
                      playground.name,
                      playground.latitude,
                      playground.longitude,
                    )}
                    target="_blank"
                    rel="noopener noreferrer"
                    _hover={{ textDecoration: 'none' }}
                  >
                    <Button
                      size="sm"
                      variant="solid"
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
                      width="100%"
                      display="flex"
                      alignItems="center"
                      justifyContent="center"
                      gap={2}
                    >
                      <Icon as={MdMap} boxSize={5} />
                      <Text fontSize="xs" fontWeight="medium">
                        {t('playground.searchOnGoogleMaps')}
                      </Text>
                    </Button>
                  </Link>
                </Tooltip>
              )}
            </Box>

            {/* Add style to customize Leaflet's popup */}
            <style>
              {`
                .leaflet-popup-close-button {
                  color: var(--chakra-colors-white) !important;
                  font-size: 24px !important;
                  font-weight: bold !important;
                  padding: 8px !important;
                  width: auto !important;
                  height: auto !important;
                }
                .leaflet-popup-close-button:hover {
                  color: var(--chakra-colors-secondary-300) !important;
                }
                .leaflet-popup-content {
                  margin: 0px !important;
                  width: 100% !important;
                }
                .leaflet-popup-content-wrapper {
                  padding: 0px !important;
                  border-radius: 8px !important;
                  overflow: hidden !important;
                }
              `}
            </style>

            {/* Main content area */}
            <Box px={4} py={2}>
              <VStack align="stretch" gap={2}>
                {/* Star Rating Section */}
                {ratingLoading || authLoading ? (
                  <Flex justify="center" align="center" minH="50px">
                    <Spinner
                      size="md"
                      color="brand.500"
                      role="status"
                      aria-label={t('playground.rating.loading')}
                    />
                  </Flex>
                ) : (
                  <VStack gap={1.5}>
                    {/* Visited and Public Rating Toggle - integrated below stars */}
                    {!ratingLoading && (
                      <Flex justify="center" align="center" gap={4}>
                        <Flex align="center" gap={2}>
                          <Text
                            fontSize="sm"
                            fontWeight="medium"
                            color={!user ? 'gray.400' : 'gray.700'}
                          >
                            {t('playground.markVisited')}
                          </Text>
                          <Box
                            onClick={() => {
                              if (!user) {
                                showLoginToast();
                              }
                            }}
                            cursor={!user ? 'pointer' : 'default'}
                          >
                            <Switch
                              size="md"
                              checked={hasVisited}
                              onCheckedChange={async () => {
                                if (!user) {
                                  return;
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
                        </Flex>
                        {/* Public Rating Toggle - only shown if user has rated */}
                        {!authLoading && rating?.userRating && (
                          <Flex align="center" gap={2}>
                            <HStack gap={1}>
                              <Text
                                fontSize="sm"
                                fontWeight="medium"
                                color={!user ? 'gray.400' : 'gray.700'}
                              >
                                {t('playground.makePublic')}
                              </Text>
                              <InfoTip>{t('playground.rating.publicExplanation')}</InfoTip>
                            </HStack>
                            <Box cursor="default">
                              <Switch
                                size="md"
                                checked={rating?.isPublic ?? false}
                                onCheckedChange={handleTogglePublic}
                                disabled={!user}
                                aria-label={t('playground.makePublic')}
                              />
                            </Box>
                          </Flex>
                        )}
                      </Flex>
                    )}

                    {/* Average Rating and User Star Rating on same row */}
                    <Flex
                      align="center"
                      justify="center"
                      gap={3}
                      pt={1.5}
                      borderTop="1px solid"
                      borderColor="gray.200"
                    >
                      {/* Average Rating */}
                      <Flex align="center" gap={1}>
                        <Text fontSize="lg" fontWeight="bold" color="gray.700">
                          {rating?.avgRating ? Number(rating.avgRating).toFixed(1) : 'N/A'}
                        </Text>
                        <Icon as={FaStar} boxSize={4} color="secondary.500" />
                        <Text fontSize="xs" color="gray.500">
                          ({rating?.totalRatings || 0})
                        </Text>
                      </Flex>

                      {/* Divider */}
                      <Box w="1px" h="20px" bg="gray.300" />

                      {/* User Star Rating */}
                      <Flex align="center" gap={1}>
                        {[1, 2, 3, 4, 5].map((value) => (
                          <Box
                            key={value}
                            as="button"
                            onClick={async (e: React.MouseEvent<HTMLDivElement>) => {
                              e.preventDefault();
                              e.stopPropagation();
                              if (!user) {
                                showLoginToast();
                                return;
                              }

                              try {
                                // Update the visit first
                                const result = await addVisit(playground.id);
                                if (result.error) {
                                  toast.showError({
                                    title: t('common.error'),
                                    description: result.error,
                                  });
                                  return;
                                }

                                // Then handle the rating
                                await handleRating(
                                  value,
                                  e as unknown as React.MouseEvent<HTMLButtonElement>,
                                  result.visitId,
                                );
                              } catch (error) {
                                // Error handling is done in handleRating, but catch to prevent unhandled promise rejection
                                console.error('Rating operation failed:', error);
                              }
                            }}
                            onPointerEnter={(e) => {
                              // Only apply hover effects for mouse input, not touch
                              // This prevents re-renders during touch events on iOS
                              if (e.pointerType === 'mouse' && user) {
                                if (hoveredRating !== value) {
                                  setHoveredRating(value);
                                }
                              }
                            }}
                            onPointerLeave={(e) => {
                              // Only apply hover effects for mouse input, not touch
                              if (e.pointerType === 'mouse' && user) {
                                if (hoveredRating !== null) {
                                  setHoveredRating(null);
                                }
                              }
                            }}
                            aria-disabled={!user}
                            aria-label={t('playground.rating.buttonLabel', { count: value })}
                            role="button"
                            cursor={user ? 'pointer' : 'not-allowed'}
                            opacity={!user ? 0.5 : 1}
                            transition="all 0.2s"
                            _hover={
                              user
                                ? {
                                    transform: 'scale(1.3)',
                                  }
                                : undefined
                            }
                            display="flex"
                            alignItems="center"
                            justifyContent="center"
                            p={1}
                            bg="transparent"
                            border="none"
                            outline="none"
                            _focus={{ outline: 'none' }}
                          >
                            {value <= (hoveredRating || rating?.userRating || 0) ? (
                              <FaStar
                                color={
                                  !user
                                    ? 'var(--chakra-colors-gray-400)'
                                    : 'var(--chakra-colors-secondary-500)'
                                }
                                size={24}
                              />
                            ) : (
                              <FaRegStar color="var(--chakra-colors-gray-400)" size={24} />
                            )}
                          </Box>
                        ))}
                      </Flex>
                    </Flex>
                  </VStack>
                )}

                {/* Edit button - only shown in edit mode */}
                {editMode && user && (
                  <Button
                    size="sm"
                    variant="solid"
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
                    onClick={() => setShowEditModal(true)}
                    width="100%"
                    display="flex"
                    alignItems="center"
                    justifyContent="center"
                    gap={2}
                  >
                    <Icon as={HiPencil} boxSize={4} />
                    {t('playground.edit.editButton')}
                  </Button>
                )}
              </VStack>
            </Box>
          </VStack>
        )}
      </Box>

      {/* Edit Playground Modal */}
      {showEditModal && (
        <EditPlaygroundModal
          isOpen={showEditModal}
          onClose={() => setShowEditModal(false)}
          playground={playground}
        />
      )}
    </>
  );
};
