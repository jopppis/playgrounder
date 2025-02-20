import { Box } from '@chakra-ui/react'
import { useState } from 'react'
import { useLocation } from 'react-router-dom'
import ResetPassword from './components/Auth/ResetPassword'
import Header from './components/Header'
import PlaygroundMap from './components/PlaygroundMap'
import useDocumentTitle from './hooks/useDocumentTitle'

function App() {
  const [showSignIn, setShowSignIn] = useState(false)
  const location = useLocation()
  const searchParams = new URLSearchParams(location.search)
  const showResetPassword = searchParams.has('reset_password')
  useDocumentTitle()

  return (
    <Box position="relative" h="100vh" w="100vw">
      <PlaygroundMap />
      <Box
        position="absolute"
        top={4}
        left={4}
        right={4}
        zIndex={1000}
      >
        <Header
          showSignIn={showSignIn}
          setShowSignIn={setShowSignIn}
        />
      </Box>
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
    </Box>
  )
}

export default App
