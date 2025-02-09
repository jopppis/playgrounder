import i18n from 'i18next';
import { initReactI18next } from 'react-i18next';
import enTranslations from './locales/en.json';
import fiTranslations from './locales/fi.json';

// Get stored language preference or detect browser language
const getInitialLanguage = () => {
  const storedLang = localStorage.getItem('language');
  if (storedLang && ['en', 'fi'].includes(storedLang)) {
    return storedLang;
  }

  const browserLang = navigator.language.split('-')[0];
  return browserLang === 'fi' ? 'fi' : 'en';
};

i18n
  .use(initReactI18next)
  .init({
    resources: {
      en: {
        translation: enTranslations,
      },
      fi: {
        translation: fiTranslations,
      },
    },
    lng: getInitialLanguage(),
    fallbackLng: 'en',
    interpolation: {
      escapeValue: false,
    },
  });

// Store language preference when it changes
i18n.on('languageChanged', (lng) => {
  localStorage.setItem('language', lng);
});

export default i18n;
