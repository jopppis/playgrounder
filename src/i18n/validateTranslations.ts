import en from './locales/en.json';
import fi from './locales/fi.json';

type TranslationObject = {
  [key: string]: string | TranslationObject;
};

function getAllKeys(obj: TranslationObject, parentKey = ''): string[] {
  return Object.entries(obj).reduce((keys: string[], [key, value]) => {
    const currentKey = parentKey ? `${parentKey}.${key}` : key;
    if (typeof value === 'object' && value !== null) {
      return [...keys, ...getAllKeys(value as TranslationObject, currentKey)];
    }
    return [...keys, currentKey];
  }, []);
}

function findMissingKeys(source: string[], target: string[]): string[] {
  return source.filter(key => !target.includes(key));
}

const enKeys = getAllKeys(en).sort();
const fiKeys = getAllKeys(fi).sort();

const missingInFi = findMissingKeys(enKeys, fiKeys);
const missingInEn = findMissingKeys(fiKeys, enKeys);

if (missingInFi.length > 0) {
  console.log('Keys missing in Finnish translation:');
  missingInFi.forEach(key => console.log(`  - ${key}`));
}

if (missingInEn.length > 0) {
  console.log('Keys missing in English translation:');
  missingInEn.forEach(key => console.log(`  - ${key}`));
}

if (missingInFi.length === 0 && missingInEn.length === 0) {
  console.log('✅ All translation keys match!');
}
