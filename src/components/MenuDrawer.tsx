import { Box, Button, Grid, GridItem, Text } from '@chakra-ui/react'
import { useState } from 'react'

type MenuDrawerProps = {
  isOpen: boolean
  onClose: () => void
}

const MenuDrawer = ({ isOpen, onClose }: MenuDrawerProps) => {
  const [showAbout, setShowAbout] = useState(false)

  if (!isOpen) return null

  return (
    <Box
      position="fixed"
      top={0}
      right={0}
      h="100vh"
      w="300px"
      bg="gray.800"
      boxShadow="dark-lg"
      p={4}
      zIndex={2000}
      color="white"
    >
      <Button
        size="sm"
        onClick={onClose}
        position="absolute"
        right={2}
        top={2}
        variant="ghost"
        color="white"
        _hover={{ bg: 'whiteAlpha.200' }}
        fontSize="md"
      >
        ×
      </Button>
      <Box pt={12}>
        {!showAbout ? (
          <>
            <Grid templateColumns="repeat(2, 1fr)" gap={2} mb={4}>
              <GridItem>
                <Button
                  w="100%"
                  variant="solid"
                  colorScheme="teal"
                >
                  Sign Up
                </Button>
              </GridItem>
              <GridItem>
                <Button
                  w="100%"
                  variant="outline"
                  color="white"
                  _hover={{ bg: 'whiteAlpha.200' }}
                >
                  Sign In
                </Button>
              </GridItem>
            </Grid>
            <Button
              w="100%"
              variant="ghost"
              color="white"
              _hover={{ bg: 'whiteAlpha.200' }}
              onClick={() => setShowAbout(true)}
            >
              About
            </Button>
          </>
        ) : (
          <>
            <Text fontSize="lg" fontWeight="bold" mb={4}>
              About Playground Tracker
            </Text>
            <Text mb={4}>
              A community-driven app to help parents and caregivers find and share local playgrounds.
              Track your visits, rate playgrounds, and discover new places for your children to play.
            </Text>
            <Button
              w="100%"
              variant="ghost"
              color="white"
              _hover={{ bg: 'whiteAlpha.200' }}
              onClick={() => setShowAbout(false)}
            >
              Back to Menu
            </Button>
          </>
        )}
      </Box>
    </Box>
  )
}

export default MenuDrawer
