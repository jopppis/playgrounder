import i18next from 'i18next';
import enTranslations from '../i18n/locales/en.json';
import fiTranslations from '../i18n/locales/fi.json';

// Create a mock i18n instance for tests
export const i18n = i18next.createInstance();
i18n.init({
  lng: 'en',
  resources: {
    en: {
      translation: enTranslations,
    },
    fi: {
      translation: fiTranslations,
    },
  },
});
