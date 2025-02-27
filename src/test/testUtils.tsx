/* eslint-disable react-refresh/only-export-components */
import { render, RenderOptions } from '@testing-library/react'
import { ReactElement } from 'react'
import { i18n } from './i18n-instance'
import { AllTheProviders } from './test-providers'

const customRender = (
  ui: ReactElement,
  options?: Omit<RenderOptions, 'wrapper'>
) => render(ui, { wrapper: AllTheProviders, ...options })

// re-export everything
export * from '@testing-library/react'
export { i18n, customRender as render }
