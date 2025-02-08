import { Box } from '@chakra-ui/react'
import Header from './components/Header'
import PlaygroundMap from './components/PlaygroundMap'

function App() {
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
        <Header />
      </Box>
    </Box>
  )
}

export default App
