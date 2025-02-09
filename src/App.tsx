import { Box } from '@chakra-ui/react'
import { useState } from 'react'
import Header from './components/Header'
import PlaygroundMap from './components/PlaygroundMap'

function App() {
  const [selectedServiceLevel, setSelectedServiceLevel] = useState<number | null>(null)

  return (
    <Box position="relative" h="100vh" w="100vw">
      <PlaygroundMap selectedServiceLevel={selectedServiceLevel} />
      <Box
        position="absolute"
        top={4}
        left={4}
        right={4}
        zIndex={1000}
      >
        <Header
          selectedServiceLevel={selectedServiceLevel}
          onServiceLevelChange={setSelectedServiceLevel}
        />
      </Box>
    </Box>
  )
}

export default App
