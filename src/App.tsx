import { Box } from '@chakra-ui/react'
import { useState } from 'react'
import { useLocation } from 'react-router-dom'
import ResetPassword from './components/Auth/ResetPassword'
import AddPlaygroundModal from './components/Playground/AddPlaygroundModal'
import PlaygroundMap from './components/PlaygroundMap'
import useDocumentTitle from './hooks/useDocumentTitle'

function App() {
  const location = useLocation()
  const searchParams = new URLSearchParams(location.search)
  const showResetPassword = searchParams.has('reset_password')
  useDocumentTitle()

  // Add state for edit mode and add playground modal
  const [editMode, setEditMode] = useState(false)
  const [showAddPlayground, setShowAddPlayground] = useState(false)
  const [addedLocations, setAddedLocations] = useState<Array<{
    lat: number
    lng: number
    name: string
    hasSupervised: boolean
  }>>([])
  const [currentLocation, setCurrentLocation] = useState<{ lat: number; lng: number } | null>(null)
  const [isSelectingLocation, setIsSelectingLocation] = useState(false)

  // Handle location selection for new playground
  const handleAddPlayground = (location: { lat: number; lng: number }) => {
    setCurrentLocation(location)
    setShowAddPlayground(true)
    setIsSelectingLocation(false)
  }

  // Handle successful playground addition
  const handlePlaygroundAdded = (name: string, hasSupervised: boolean) => {
    if (currentLocation) {
      setAddedLocations([...addedLocations, {
        ...currentLocation,
        name,
        hasSupervised
      }])
    }
    setShowAddPlayground(false)
  }

  return (
    <Box position="relative" h="100dvh" w="100vw">
      <PlaygroundMap
        editMode={editMode}
        onAddPlayground={handleAddPlayground}
        onEditModeChange={setEditMode}
        selectingLocation={isSelectingLocation}
        addedLocations={addedLocations}
      />
      {showResetPassword && (
        <Box
          position="fixed"
          top={0}
          left={0}
          right={0}
          bottom={0}
          bg="blackAlpha.600"
          zIndex={2100}
          display="flex"
          alignItems="center"
          justifyContent="center"
        >
          <Box
            bg="white"
            borderRadius="xl"
            maxW="md"
            w="90%"
          >
            <ResetPassword />
          </Box>
        </Box>
      )}
      <AddPlaygroundModal
        isOpen={showAddPlayground}
        onClose={handlePlaygroundAdded}
        onCancel={() => {
          setShowAddPlayground(false)
          setCurrentLocation(null)
        }}
        location={currentLocation}
        onLocationSelect={() => {
          setShowAddPlayground(false)
          setIsSelectingLocation(true)
          window.dispatchEvent(new CustomEvent('startAddingPlayground'))
        }}
      />
    </Box>
  )
}

export default App
