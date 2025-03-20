import { Box, Button, Heading, Icon, Input, Link, Stack, Text } from '@chakra-ui/react';
import { AuthError } from '@supabase/supabase-js';
import { useState } from 'react';
import { useTranslation } from 'react-i18next';
import { FaTimes } from 'react-icons/fa';
import { useNavigate } from 'react-router-dom';
import Turnstile from 'react-turnstile';
import { useToast } from '../../hooks/useToast';
import { supabase } from '../../lib/supabaseClient';

interface SignInProps {
  onSuccess?: () => void;
  onSignInSuccess?: () => void;
  onClose?: () => void;
}

export default function SignIn({ onSuccess, onSignInSuccess, onClose }: SignInProps) {
  const { t } = useTranslation();
  const navigate = useNavigate();
  const [email, setEmail] = useState('');
  const [password, setPassword] = useState('');
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState<string | null>(null);
  const [captchaToken, setCaptchaToken] = useState<string | null>(null);
  const [resetCounter, setResetCounter] = useState(0);
  const toast = useToast();
  // Enable Turnstile in development and production, but not in local
  const enableTurnstile = import.meta.env.VITE_APP_ENV !== 'local';

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    setLoading(true);
    setError(null);

    if (enableTurnstile && !captchaToken) {
      setError(t('auth.signIn.error.captchaRequired'));
      setLoading(false);
      return;
    }

    try {
      const { error: signInError } = await supabase.auth.signInWithPassword({
        email,
        password,
        options: enableTurnstile && captchaToken ? { captchaToken } : undefined,
      });

      if (signInError) throw signInError;

      toast.showSuccess({
        title: t('auth.signIn.success.title'),
        description: t('auth.signIn.success.message'),
      });

      navigate('/');
      onSignInSuccess?.();
    } catch (err) {
      const authError = err as AuthError;
      setError(authError.message);
      toast.showError({
        title: t('auth.signIn.error.title'),
        description: t('auth.signIn.error.message'),
      });
      // Reset captcha on error
      if (window.turnstile) {
        window.turnstile.reset();
      }
      // We need to reset the captchaToken and increment the reset counter
      // to force a fresh instance of the Turnstile component
      setCaptchaToken(null);
      setResetCounter((prev) => prev + 1);
    } finally {
      setLoading(false);
    }
  };

  return (
    <Box position="relative" p={6} bg="gray.50" color="gray.700" borderRadius="xl" boxShadow="xl">
      <Box position="absolute" right={2} top={2}>
        <Button
          onClick={onClose}
          color="white"
          bg="brand.500"
          _hover={{ bg: 'secondary.500' }}
          size="sm"
          minW="24px"
          h="24px"
          p={0}
          aria-label={t('auth.signIn.close')}
        >
          <Icon as={FaTimes} boxSize={3} />
        </Button>
      </Box>
      <Stack gap={8}>
        <Heading size="lg" color="brand.500">
          {t('auth.signIn.title')}
        </Heading>
        {error && (
          <Box p={4} bg="red.50" color="red.500" borderRadius="md" w="100%">
            <Text fontWeight="bold">{t('auth.signIn.error.title')}</Text>
            <Text>{error}</Text>
          </Box>
        )}
        <Box as="form" onSubmit={handleSubmit}>
          <Stack gap={4}>
            <Box>
              <Text mb={2} color="gray.700">
                {t('auth.signIn.email')}
              </Text>
              <Input
                type="email"
                name="email"
                autoComplete="username"
                value={email}
                onChange={(e: React.ChangeEvent<HTMLInputElement>) => setEmail(e.target.value)}
                placeholder={t('auth.signIn.emailPlaceholder')}
                required
                fontSize={{ base: '16px', sm: 'inherit' }}
                _placeholder={{ color: 'gray.400' }}
                borderColor="brand.200"
                _hover={{ borderColor: 'brand.300' }}
                _focus={{
                  borderColor: 'brand.500',
                  boxShadow: '0 0 0 1px var(--chakra-colors-brand-500)',
                  outline: 'none',
                }}
              />
            </Box>
            <Box>
              <Text mb={2} color="gray.700">
                {t('auth.signIn.password')}
              </Text>
              <Input
                type="password"
                name="password"
                autoComplete="current-password"
                data-form-type="password"
                value={password}
                onChange={(e: React.ChangeEvent<HTMLInputElement>) => setPassword(e.target.value)}
                placeholder={t('auth.signIn.passwordPlaceholder')}
                required
                fontSize={{ base: '16px', sm: 'inherit' }}
                _placeholder={{ color: 'gray.400' }}
                borderColor="brand.200"
                _hover={{ borderColor: 'brand.300' }}
                _focus={{
                  borderColor: 'brand.500',
                  boxShadow: '0 0 0 1px var(--chakra-colors-brand-500)',
                  outline: 'none',
                }}
              />
            </Box>
            <Link
              color="brand.500"
              _hover={{ color: 'secondary.500' }}
              onClick={onSuccess}
              alignSelf="flex-end"
              fontSize="sm"
              cursor="pointer"
            >
              {t('auth.forgotPassword.button')}
            </Link>
            <Box>
              {enableTurnstile && (
                <Turnstile
                  key={`turnstile-${resetCounter}`}
                  sitekey={import.meta.env.VITE_TURNSTILE_SITE_KEY}
                  onSuccess={(token) => setCaptchaToken(token)}
                  onError={() => setCaptchaToken(null)}
                  onExpire={() => setCaptchaToken(null)}
                  theme="light"
                />
              )}
            </Box>
            <Button
              type="submit"
              bg="brand.500"
              color="white"
              w="100%"
              disabled={loading || (enableTurnstile && !captchaToken)}
              size="lg"
              _hover={{ bg: 'secondary.500', transform: 'translateY(-2px)' }}
              _active={{ bg: 'brand.500', transform: 'translateY(0)' }}
              transition="all 0.2s"
            >
              {loading ? t('auth.signIn.button.loading') : t('auth.signIn.button.default')}
            </Button>
          </Stack>
        </Box>
      </Stack>
    </Box>
  );
}
