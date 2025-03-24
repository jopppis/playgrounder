import { Box, Button, ButtonProps, Text } from '@chakra-ui/react';
import { useState } from 'react';
import { useTranslation } from 'react-i18next';
import { useAuth } from '../hooks/useAuth';
import ChangeEmailModal from './Auth/ChangeEmailModal';
import ChangePasswordModal from './Auth/ChangePasswordModal';
import RemoveAccount from './Auth/RemoveAccount';

type AccountProps = {
  onBack: () => void;
};

const Account = ({ onBack }: AccountProps) => {
  const { t } = useTranslation();
  const { user } = useAuth();
  const [showRemoveAccount, setShowRemoveAccount] = useState(false);
  const [showChangePassword, setShowChangePassword] = useState(false);
  const [showChangeEmail, setShowChangeEmail] = useState(false);

  const buttonProps: ButtonProps = {
    w: '100%',
    variant: 'solid',
    bg: 'brand.500',
    color: 'white',
    border: '1px solid',
    borderColor: 'brand.500',
    _hover: { bg: 'secondary.500', transform: 'translateY(-2px)', borderColor: 'secondary.500' },
    _active: { bg: 'brand.500', transform: 'translateY(0)' },
    transition: 'all 0.2s',
    display: 'flex',
    alignItems: 'center',
    justifyContent: 'center',
    px: 3,
    h: '36px',
    gap: 2,
    fontSize: 'sm',
  };

  return (
    <>
      <Text fontSize="lg" fontWeight="bold" color="brand.500" mb={4}>
        {t('menu.account.title')}
      </Text>

      <Box mb={4}>
        <Text fontSize="sm" color="gray.500">
          {t('auth.user.email')}
        </Text>
        <Text fontSize="md" fontWeight="medium" color="gray.700">
          {user?.email}
        </Text>
      </Box>

      <Button {...buttonProps} onClick={() => setShowChangeEmail(true)} mb={2}>
        {t('auth.changeEmail.button.default')}
      </Button>

      <Button {...buttonProps} onClick={() => setShowChangePassword(true)} mb={2}>
        {t('auth.changePassword.button.default')}
      </Button>

      <Button
        {...buttonProps}
        bg="red.500"
        borderColor="red.500"
        _hover={{ bg: 'red.600', borderColor: 'red.600' }}
        onClick={() => setShowRemoveAccount(true)}
        mb={4}
      >
        {t('auth.removeAccount.button')}
      </Button>

      <Button {...buttonProps} onClick={onBack}>
        {t('menu.account.backButton')}
      </Button>

      {showRemoveAccount && (
        <RemoveAccount isOpen={showRemoveAccount} onClose={() => setShowRemoveAccount(false)} />
      )}
      {showChangePassword && (
        <ChangePasswordModal
          isOpen={showChangePassword}
          onClose={() => setShowChangePassword(false)}
        />
      )}
      {showChangeEmail && (
        <ChangeEmailModal isOpen={showChangeEmail} onClose={() => setShowChangeEmail(false)} />
      )}
    </>
  );
};

export default Account;
