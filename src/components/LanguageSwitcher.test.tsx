import { fireEvent, screen } from '@testing-library/react';
import { beforeEach, describe, expect, it } from 'vitest';
import enTranslations from '../i18n/locales/en.json';
import { i18n, render } from '../test/testUtils';
import LanguageSwitcher from './LanguageSwitcher';

describe('LanguageSwitcher', () => {
  const renderComponent = (): ReturnType<typeof render> => {
    return render(<LanguageSwitcher />);
  };

  beforeEach(() => {
    i18n.changeLanguage('en');
  });

  it('renders language options', () => {
    renderComponent();
    const select = screen.getByRole('combobox');
    expect(select).toBeInTheDocument();
    expect(screen.getByText(enTranslations.menu.en)).toBeInTheDocument();
    expect(screen.getByText(enTranslations.menu.fi)).toBeInTheDocument();
  });

  it('shows English as selected when English is active', () => {
    renderComponent();
    const select = screen.getByRole('combobox') as HTMLSelectElement;
    expect(select.value).toBe('en');
  });

  it('shows Finnish as selected when Finnish is active', () => {
    i18n.changeLanguage('fi');
    renderComponent();
    const select = screen.getByRole('combobox') as HTMLSelectElement;
    expect(select.value).toBe('fi');
  });

  it('changes language when selecting a different option', () => {
    renderComponent();
    const select = screen.getByRole('combobox');

    // Change to Finnish
    fireEvent.change(select, { target: { value: 'fi' } });
    expect(i18n.language).toBe('fi');

    // Change back to English
    fireEvent.change(select, { target: { value: 'en' } });
    expect(i18n.language).toBe('en');
  });
});
