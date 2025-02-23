"use client"

import { Box, NativeSelect } from "@chakra-ui/react"
import { useState } from "react"
import { useTranslation } from "react-i18next"

const languages = [
  { label: "English", value: "en" },
  { label: "Suomi", value: "fi" },
]

export default function LanguageSwitcher() {
  const { i18n } = useTranslation()
  const [value, setValue] = useState(i18n.language)

  const handleLanguageChange = (e: React.ChangeEvent<HTMLSelectElement>) => {
    const lang = e.target.value
    i18n.changeLanguage(lang)
    setValue(lang)
  }

  return (
    <Box position="relative">
      <NativeSelect.Root
        size="md"
        variant="outline"
        colorPalette="brand"
      >
        <NativeSelect.Field
          value={value}
          onChange={handleLanguageChange}
        >
          {languages.map((language) => (
            <option
              key={language.value}
              value={language.value}
            >
              {language.label}
            </option>
          ))}
        </NativeSelect.Field>
        <NativeSelect.Indicator />
      </NativeSelect.Root>
    </Box>
  )
}
