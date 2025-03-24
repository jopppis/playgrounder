import { renderHook } from '@testing-library/react';
import { describe, expect, it, vi } from 'vitest';
import { toaster } from '../components/ui/toaster-exports';
import { useToast } from './useToast';

// Mock the toaster
vi.mock('../components/ui/toaster-exports', () => ({
  toaster: {
    create: vi.fn(),
  },
}));

describe('useToast', () => {
  it('shows success toast with default options', () => {
    const { result } = renderHook(() => useToast());

    result.current.showSuccess({
      title: 'Success',
      description: 'Operation completed',
    });

    expect(toaster.create).toHaveBeenCalledWith({
      title: 'Success',
      description: 'Operation completed',
      type: 'success',
    });
  });

  it('shows error toast with default options', () => {
    const { result } = renderHook(() => useToast());

    result.current.showError({
      title: 'Error',
      description: 'Something went wrong',
    });

    expect(toaster.create).toHaveBeenCalledWith({
      title: 'Error',
      description: 'Something went wrong',
      type: 'error',
    });
  });

  it('shows loading toast with default options', () => {
    const { result } = renderHook(() => useToast());

    result.current.showLoading({
      title: 'Loading',
      description: 'Please wait',
    });

    expect(toaster.create).toHaveBeenCalledWith({
      title: 'Loading',
      description: 'Please wait',
      type: 'loading',
    });
  });

  it('shows info toast with default options', () => {
    const { result } = renderHook(() => useToast());

    result.current.showInfo({
      title: 'Info',
      description: 'For your information',
    });

    expect(toaster.create).toHaveBeenCalledWith({
      title: 'Info',
      description: 'For your information',
      type: 'info',
    });
  });

  it('handles custom duration', () => {
    const { result } = renderHook(() => useToast());

    result.current.showInfo({
      title: 'Quick Info',
      description: 'This will disappear soon',
      duration: 2000,
    });

    expect(toaster.create).toHaveBeenCalledWith({
      title: 'Quick Info',
      description: 'This will disappear soon',
      duration: 2000,
      type: 'info',
    });
  });

  it('handles action buttons', () => {
    const mockAction = vi.fn();
    const { result } = renderHook(() => useToast());

    result.current.showInfo({
      title: 'Action Required',
      description: 'Please take action',
      action: {
        label: 'Click me',
        onClick: mockAction,
      },
    });

    expect(toaster.create).toHaveBeenCalledWith({
      title: 'Action Required',
      description: 'Please take action',
      type: 'info',
      action: {
        label: 'Click me',
        onClick: mockAction,
      },
    });
  });
});
