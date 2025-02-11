import createCache from '@emotion/cache'
import { CacheProvider } from '@emotion/react'
import createEmotionServer from '@emotion/server/create-instance'
import { createElement } from 'react'

const emotionCache = createCache({
  key: 'emotion-cache',
  prepend: true,
})

export const emotionServer = createEmotionServer(emotionCache)

export const EmotionCacheProvider: React.FC<{ children: React.ReactNode }> = ({ children }) => {
  return createElement(CacheProvider, { value: emotionCache }, children)
}
