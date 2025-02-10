import { Box } from '@chakra-ui/react'
import { useState } from 'react'
import Header from './components/Header'
import PlaygroundMap from './components/PlaygroundMap'

function App() {
  const [showSignIn, setShowSignIn] = useState(false)

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
    </Box>
  )
}

export default App
