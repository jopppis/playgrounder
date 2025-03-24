import { fireEvent, screen } from '@testing-library/react';
import { act } from 'react';
import { beforeEach, describe, expect, it, vi } from 'vitest';
import { useAuth } from '../hooks/useAuth';
import enTranslations from '../i18n/locales/en.json';
import { render } from '../test/testUtils';
import { FilterOptions, PlaygroundFilter } from './PlaygroundFilter';

// Mock the useAuth hook
vi.mock('../hooks/useAuth', () => ({
  useAuth: vi.fn(),
}));

// Mock the usePlaygrounds hook
vi.mock('../hooks/usePlaygrounds', () => ({
  usePlaygrounds: vi.fn().mockReturnValue({
    playgrounds: [
      { id: 1, city: 'Helsinki' },
      { id: 2, city: 'Espoo' },
    ],
    loading: false,
    error: null,
  }),
}));

// Mock Supabase client
vi.mock('../lib/supabaseClient', () => ({
  supabase: {
    from: vi.fn().mockReturnValue({
      select: vi.fn().mockReturnValue({
        data: [],
        error: null,
      }),
    }),
  },
}));

// Mock useBreakpointValue to always return desktop values
vi.mock('@chakra-ui/react', async () => {
  const actual = await vi.importActual('@chakra-ui/react');
  return {
    ...actual,
    useBreakpointValue: vi.fn().mockImplementation((values) => {
      // Always return the sm/desktop value if it exists
      if (typeof values === 'object' && values !== null) {
        return values.sm || values.base;
      }
      return values;
    }),
  };
});

// Mock i18next to use actual English translations
vi.mock('react-i18next', () => ({
  useTranslation: () => ({
    t: (key: string, options?: Record<string, unknown>) => {
      // Split the key by dots to traverse the translations object
      const keys = key.split('.');
      const value = keys.reduce(
        (obj: Record<string, unknown>, key: string) => {
          if (typeof obj === 'object' && obj !== null) {
            return obj[key] as Record<string, unknown>;
          }
          return {};
        },
        enTranslations as Record<string, unknown>,
      );

      // Handle interpolation if options are provided
      let result = typeof value === 'string' ? value : key;
      if (typeof result === 'string' && options) {
        Object.entries(options).forEach(([key, val]) => {
          result = result.replace(`{{${key}}}`, String(val));
        });
      }

      return result;
    },
  }),
  I18nextProvider: ({ children }: { children: React.ReactNode }) => children,
}));

describe('PlaygroundFilter', () => {
  const mockOnChange = vi.fn();
  const defaultFilters: FilterOptions = {
    searchQuery: null,
    visitStatus: null,
    minStars: null,
    minUserStars: null,
    hasSupervised: null,
    city: null,
    noRating: null,
    noUserRating: null,
    dataSource: null,
    hideUnnamed: null,
  };

  beforeEach(() => {
    vi.clearAllMocks();
    (useAuth as ReturnType<typeof vi.fn>).mockReturnValue({ user: null });
  });

  const renderComponent = (filters = defaultFilters): ReturnType<typeof render> => {
    return render(
      <PlaygroundFilter filters={filters} onChange={mockOnChange} onLoadAllPlaygrounds={vi.fn()} />,
    );
  };

  const getFilterButton = () => {
    return screen.getByRole('button', { name: enTranslations.filterPlaygrounds });
  };

  it('renders filter button', async () => {
    await act(async () => {
      renderComponent();
    });
    expect(getFilterButton()).toBeInTheDocument();
  });

  it('shows filter options when clicked', async () => {
    renderComponent();
    await act(async () => {
      fireEvent.click(getFilterButton());
      // Wait for any state updates to complete
      await new Promise((resolve) => setTimeout(resolve, 0));
    });
    expect(screen.getByText(enTranslations.playground.supervision.label)).toBeInTheDocument();
    expect(screen.getByText(enTranslations.minStars)).toBeInTheDocument();
  });

  it('does not show visit status filters when user is not logged in', async () => {
    renderComponent();
    await act(async () => {
      fireEvent.click(getFilterButton());
      await new Promise((resolve) => setTimeout(resolve, 0));
    });
    expect(screen.queryByText(enTranslations.visitStatus)).not.toBeInTheDocument();
  });

  it('shows visit status filters when user is logged in', async () => {
    (useAuth as ReturnType<typeof vi.fn>).mockReturnValue({ user: { id: '1' } });
    renderComponent();
    await act(async () => {
      fireEvent.click(getFilterButton());
      await new Promise((resolve) => setTimeout(resolve, 0));
    });
    expect(screen.getByText(enTranslations.visitStatus)).toBeInTheDocument();
  });

  it('calls onChange when supervision filter is clicked', async () => {
    renderComponent();
    await act(async () => {
      fireEvent.click(getFilterButton());
      await new Promise((resolve) => setTimeout(resolve, 0));
    });

    // Click the "Show more filters" button
    const showMoreButton = screen.getByRole('button', { name: enTranslations.showMore });
    await act(async () => {
      fireEvent.click(showMoreButton);
      await new Promise((resolve) => setTimeout(resolve, 0));
    });

    const supervisionSelect = screen.getByRole('combobox', {
      name: enTranslations.playground.supervision.label,
    });
    expect(supervisionSelect).toBeInTheDocument();

    await act(async () => {
      fireEvent.change(supervisionSelect, { target: { value: 'true' } });
      await new Promise((resolve) => setTimeout(resolve, 0));
    });

    expect(mockOnChange).toHaveBeenCalledWith({
      ...defaultFilters,
      hasSupervised: true,
    });
  });

  it('toggles supervision filter when clicked twice', async () => {
    renderComponent({ ...defaultFilters, hasSupervised: true });
    await act(async () => {
      fireEvent.click(getFilterButton());
      await new Promise((resolve) => setTimeout(resolve, 0));
    });

    // Click the "Show more filters" button
    const showMoreButton = screen.getByRole('button', { name: enTranslations.showMore });
    await act(async () => {
      fireEvent.click(showMoreButton);
      await new Promise((resolve) => setTimeout(resolve, 0));
    });

    const supervisionSelect = screen.getByRole('combobox', {
      name: enTranslations.playground.supervision.label,
    });
    expect(supervisionSelect).toBeInTheDocument();

    await act(async () => {
      fireEvent.change(supervisionSelect, { target: { value: '' } });
      await new Promise((resolve) => setTimeout(resolve, 0));
    });

    expect(mockOnChange).toHaveBeenCalledWith({
      ...defaultFilters,
      hasSupervised: null,
    });
  });

  it('shows visited filter when user is logged in', async () => {
    (useAuth as ReturnType<typeof vi.fn>).mockReturnValue({ user: { id: '1' } });
    renderComponent();
    await act(async () => {
      fireEvent.click(getFilterButton());
      await new Promise((resolve) => setTimeout(resolve, 0));
    });
    expect(screen.getByText(enTranslations.visitStatus)).toBeInTheDocument();
    expect(screen.getByText(enTranslations.visited)).toBeInTheDocument();
  });

  // Updated tests for star filters with select boxes
  it('calls onChange when star filter is changed', async () => {
    renderComponent();
    await act(async () => {
      fireEvent.click(getFilterButton());
      await new Promise((resolve) => setTimeout(resolve, 0));
    });

    const starSelect = screen.getByLabelText(enTranslations.minStars);
    await act(async () => {
      fireEvent.change(starSelect, { target: { value: '5' } });
      await new Promise((resolve) => setTimeout(resolve, 0));
    });

    expect(mockOnChange).toHaveBeenCalledWith({
      ...defaultFilters,
      minStars: 5,
      noRating: null,
    });
  });

  it('calls onChange when star filter is set to no rating', async () => {
    renderComponent();
    await act(async () => {
      fireEvent.click(getFilterButton());
      await new Promise((resolve) => setTimeout(resolve, 0));
    });

    const starSelect = screen.getByLabelText(enTranslations.minStars);
    await act(async () => {
      fireEvent.change(starSelect, { target: { value: 'no-rating' } });
      await new Promise((resolve) => setTimeout(resolve, 0));
    });

    expect(mockOnChange).toHaveBeenCalledWith({
      ...defaultFilters,
      minStars: null,
      noRating: true,
    });
  });

  // Updated tests for user ratings filter with select boxes
  it('does not show user ratings filter when user is not logged in', async () => {
    renderComponent();
    await act(async () => {
      fireEvent.click(getFilterButton());
      await new Promise((resolve) => setTimeout(resolve, 0));
    });
    expect(screen.queryByText(enTranslations.minUserStars)).not.toBeInTheDocument();
  });

  it('shows user ratings filter when user is logged in', async () => {
    (useAuth as ReturnType<typeof vi.fn>).mockReturnValue({ user: { id: '1' } });
    renderComponent();
    await act(async () => {
      fireEvent.click(getFilterButton());
      await new Promise((resolve) => setTimeout(resolve, 0));
    });
    expect(screen.getByText(enTranslations.minUserStars)).toBeInTheDocument();
  });

  it('calls onChange when user rating filter is changed', async () => {
    (useAuth as ReturnType<typeof vi.fn>).mockReturnValue({ user: { id: '1' } });
    renderComponent();
    await act(async () => {
      fireEvent.click(getFilterButton());
      await new Promise((resolve) => setTimeout(resolve, 0));
    });

    const userRatingSelect = screen.getByTestId('user-rating-select');
    await act(async () => {
      fireEvent.change(userRatingSelect, { target: { value: '5' } });
      await new Promise((resolve) => setTimeout(resolve, 0));
    });

    expect(mockOnChange).toHaveBeenCalledWith({
      ...defaultFilters,
      minUserStars: 5,
      noUserRating: null,
    });
  });

  it('calls onChange when user rating filter is set to no rating', async () => {
    (useAuth as ReturnType<typeof vi.fn>).mockReturnValue({ user: { id: '1' } });
    renderComponent();
    await act(async () => {
      fireEvent.click(getFilterButton());
      await new Promise((resolve) => setTimeout(resolve, 0));
    });

    const userRatingSelect = screen.getByTestId('user-rating-select');
    await act(async () => {
      fireEvent.change(userRatingSelect, { target: { value: 'no-rating' } });
      await new Promise((resolve) => setTimeout(resolve, 0));
    });

    expect(mockOnChange).toHaveBeenCalledWith({
      ...defaultFilters,
      minUserStars: null,
      noUserRating: true,
    });
  });

  // Add test for unnamed playground filter
  it('calls onChange when unnamed filter is changed', async () => {
    renderComponent();
    await act(async () => {
      fireEvent.click(getFilterButton());
      await new Promise((resolve) => setTimeout(resolve, 0));
    });

    const unnamedSelect = screen.getByLabelText(enTranslations.playground.filter.unnamed.label);
    await act(async () => {
      fireEvent.change(unnamedSelect, { target: { value: 'true' } });
      await new Promise((resolve) => setTimeout(resolve, 0));
    });

    expect(mockOnChange).toHaveBeenCalledWith({
      ...defaultFilters,
      hideUnnamed: true,
    });
  });

  it('resets unnamed filter when selecting show all', async () => {
    renderComponent({ ...defaultFilters, hideUnnamed: true });
    await act(async () => {
      fireEvent.click(getFilterButton());
      await new Promise((resolve) => setTimeout(resolve, 0));
    });

    const unnamedSelect = screen.getByLabelText(enTranslations.playground.filter.unnamed.label);
    await act(async () => {
      fireEvent.change(unnamedSelect, { target: { value: '' } });
      await new Promise((resolve) => setTimeout(resolve, 0));
    });

    expect(mockOnChange).toHaveBeenCalledWith({
      ...defaultFilters,
      hideUnnamed: null,
    });
  });

  // Add test for community data source
  it('should handle community data source selection', async () => {
    const onChange = vi.fn();
    const onLoadAllPlaygrounds = vi.fn();
    render(
      <PlaygroundFilter
        filters={defaultFilters}
        onChange={onChange}
        onLoadAllPlaygrounds={onLoadAllPlaygrounds}
      />,
    );

    // First click the filter button to show the options
    await act(async () => {
      fireEvent.click(getFilterButton());
      await new Promise((resolve) => setTimeout(resolve, 0));
    });

    // Click the "Show more filters" button
    const showMoreButton = screen.getByRole('button', { name: enTranslations.showMore });
    await act(async () => {
      fireEvent.click(showMoreButton);
      await new Promise((resolve) => setTimeout(resolve, 0));
    });

    // Now find the data source select by its role
    const select = screen.getByRole('combobox', {
      name: enTranslations.playground.dataSource.label,
    });
    expect(select).toBeInTheDocument();

    // Change the value
    fireEvent.change(select, { target: { value: 'community' } });

    expect(onChange).toHaveBeenCalledWith({
      ...defaultFilters,
      dataSource: 'community',
    });
  });
});
