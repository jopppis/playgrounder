import { useEffect } from 'react';
import { useTranslation } from 'react-i18next';
import { Navigate, Route, Routes, useNavigate } from 'react-router-dom';
import App from './App';

function LanguageRoute({ language }: { language: 'en' | 'fi' }) {
  const { i18n } = useTranslation();
  const navigate = useNavigate();

  useEffect(() => {
    i18n.changeLanguage(language);
    navigate('/', { replace: true });
  }, [language, i18n, navigate]);

  return null;
}

export default function Router() {
  return (
    <Routes>
      <Route path="/" element={<App />} />
      <Route path="/en" element={<LanguageRoute language="en" />} />
      <Route path="/fi" element={<LanguageRoute language="fi" />} />
      <Route path="/reset-password" element={<Navigate to="/?reset_password=true" replace />} />
    </Routes>
  );
}
