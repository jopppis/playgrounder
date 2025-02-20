import { createSystem, defaultConfig, defineConfig } from "@chakra-ui/react"

const config = defineConfig({
  theme: {
    tokens: {
      colors: {
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
      colors: {
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
  },
})

export const system = createSystem(defaultConfig, config)
