import { createSystem, defineConfig, defaultConfig } from "@chakra-ui/react"

const config = defineConfig({
  ...defaultConfig,
  theme: {
    ...defaultConfig.theme,
    tokens: {
      ...defaultConfig.theme?.tokens,
      colors: {
        ...defaultConfig.theme?.tokens?.colors,
        brand: {
          50: { value: "#f1f7fd" },
          100: { value: "#dfedfa" },
          200: { value: "#c6e0f7" },
          300: { value: "#9ecdf2" },
          400: { value: "#70b1ea" },
          500: { value: "#4a90e2" },
          600: { value: "#3978d7" },
          700: { value: "#3063c5" },
          800: { value: "#2d51a0" },
          900: { value: "#29467f" },
          950: { value: "#1d2c4e" },
        },
        secondary: {
          50: { value: "#fffee7" },
          100: { value: "#fffcc1" },
          200: { value: "#fff686" },
          300: { value: "#ffe841" },
          400: { value: "#ffd50e" },
          500: { value: "#fec601" },
          600: { value: "#d09100" },
          700: { value: "#a66702" },
          800: { value: "#89500a" },
          900: { value: "#74410f" },
          950: { value: "#442104" },
        },
      },
    },
    semanticTokens: {
      ...defaultConfig.theme?.semanticTokens,
      colors: {
        ...defaultConfig.theme?.semanticTokens?.colors,
        brand: {
          solid: { value: "{colors.brand.500}" },
          contrast: { value: "{colors.brand.100}" },
          fg: { value: "{colors.brand.700}" },
          muted: { value: "{colors.brand.100}" },
          subtle: { value: "{colors.brand.200}" },
          emphasized: { value: "{colors.brand.300}" },
          focusRing: { value: "{colors.brand.500}" },
        },
        secondary: {
          solid: { value: "{colors.secondary.500}" },
          contrast: { value: "{colors.secondary.100}" },
          fg: { value: "{colors.secondary.700}" },
          muted: { value: "{colors.secondary.100}" },
          subtle: { value: "{colors.secondary.200}" },
          emphasized: { value: "{colors.secondary.300}" },
          focusRing: { value: "{colors.secondary.500}" },
        },
      },
    },
    components: {
      ...defaultConfig.theme?.components,
      Button: {
        baseStyle: {
          fontWeight: "medium",
        },
        sizes: {
          xs: {
            fontSize: "xs",
            px: 2,
            py: 1,
            height: "24px",
          },
          sm: {
            fontSize: "sm",
            px: 3,
            py: 2,
            height: "32px",
          },
          md: {
            fontSize: "md",
            px: 4,
            py: 2,
            height: "40px",
          },
          lg: {
            fontSize: "lg",
            px: 6,
            py: 3,
            height: "48px",
          },
        },
        variants: {
          solid: {
            bg: "brand.500",
            color: "white",
            _hover: {
              bg: "brand.600",
            },
            _active: {
              bg: "brand.700",
            },
          },
          ghost: {
            bg: "transparent",
            color: "gray.700",
            _hover: {
              bg: "gray.50",
            },
            _active: {
              bg: "gray.100",
            },
          },
        },
        defaultProps: {
          size: "md",
          variant: "solid",
        },
      },
      Text: {
        baseStyle: {
          color: "gray.700",
        },
        variants: {
          body: {
            fontSize: "md",
          },
          small: {
            fontSize: "sm",
          },
        },
        defaultProps: {
          variant: "body",
        },
      },
      Spinner: {
        baseStyle: {
          color: "brand.500",
        },
        sizes: {
          xs: { width: "0.75rem", height: "0.75rem" },
          sm: { width: "1rem", height: "1rem" },
          md: { width: "1.5rem", height: "1.5rem" },
          lg: { width: "2rem", height: "2rem" },
          xl: { width: "3rem", height: "3rem" },
        },
        defaultProps: {
          size: "md",
        },
      },
      Box: {
        baseStyle: {
          color: "gray.700",
        },
      },
      Stack: {
        baseStyle: {
          spacing: 4,
        },
      },
      VStack: {
        baseStyle: {
          spacing: 4,
          align: "stretch",
        },
      },
      HStack: {
        baseStyle: {
          spacing: 4,
          align: "center",
        },
      },
      Icon: {
        baseStyle: {
          boxSize: 5,
        },
      },
    },
  },
})

export const system = createSystem(config)
