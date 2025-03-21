import { Box, Button, Heading, Icon, Input, Stack, Text } from '@chakra-ui/react';
import { useState } from 'react';
import { useTranslation } from 'react-i18next';
import { FaTimes } from 'react-icons/fa';
import Turnstile from 'react-turnstile';
import { useToast } from '../../hooks/useToast';
import { supabase } from '../../lib/supabaseClient';

interface ChangeEmailProps {
  onSuccess?: () => void;
}

export default function ChangeEmail({ onSuccess }: ChangeEmailProps) {
  const { t } = useTranslation();
  const [newEmail, setNewEmail] = useState('');
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
      setError(t('auth.changeEmail.error.captchaRequired') || 'Captcha verification required');
      setLoading(false);
      return;
    }

    console.log('newEmail', newEmail);

    try {
      // Update the email directly
      const { error: updateError } = await supabase.auth.updateUser({
        email: newEmail,
        options: enableTurnstile && captchaToken ? { captchaToken } : undefined,
      });

      if (updateError) throw updateError;

      toast.showSuccess({
        title: t('auth.changeEmail.success.title'),
        description: t('auth.changeEmail.success.message'),
      });

      onSuccess?.();
    } catch (err) {
      const error = err as Error;
      setError(error.message);
      toast.showError({
        title: t('auth.changeEmail.error.title'),
        description: t('auth.changeEmail.error.message'),
      });
      // Reset captcha on error
      if (window.turnstile) {
        window.turnstile.reset();
      }
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
          onClick={onSuccess}
          color="white"
          bg="brand.500"
          _hover={{ bg: 'secondary.500' }}
          size="sm"
          minW="24px"
          h="24px"
          p={0}
          aria-label={t('auth.changeEmail.close')}
        >
          <Icon as={FaTimes} boxSize={3} />
        </Button>
      </Box>
      <Stack gap={8}>
        <Heading size="lg" color="brand.500">
          {t('auth.changeEmail.title')}
        </Heading>
        {error && (
          <Box p={4} bg="red.50" color="red.500" borderRadius="md" w="100%">
            <Text fontWeight="bold">{t('auth.changeEmail.error.title')}</Text>
            <Text>{error}</Text>
          </Box>
        )}
        <Box as="form" onSubmit={handleSubmit}>
          <Stack gap={4}>
            <Box>
              <Text mb={2} color="gray.700">
                {t('auth.changeEmail.newEmail')}
              </Text>
              <Input
                type="email"
                name="newEmail"
                autoComplete="email"
                value={newEmail}
                onChange={(e: React.ChangeEvent<HTMLInputElement>) => setNewEmail(e.target.value)}
                placeholder={t('auth.changeEmail.newEmailPlaceholder')}
                required
                bg="white"
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
            {enableTurnstile && (
              <Box>
                <Turnstile
                  key={`turnstile-${resetCounter}`}
                  sitekey={import.meta.env.VITE_TURNSTILE_SITE_KEY}
                  onSuccess={(token) => setCaptchaToken(token)}
                  onError={() => setCaptchaToken(null)}
                  onExpire={() => setCaptchaToken(null)}
                  theme="light"
                />
              </Box>
            )}
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
              loading={loading}
              loadingText={t('auth.changeEmail.button.loading')}
            >
              {t('auth.changeEmail.button.default')}
            </Button>
          </Stack>
        </Box>
      </Stack>
    </Box>
  );
}
