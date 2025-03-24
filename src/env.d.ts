/// <reference types="vite/client" />

interface ImportMetaEnv {
  readonly APP_VERSION: string;
  readonly BUILD_ID: string;
}

interface ImportMeta {
  readonly env: ImportMetaEnv;
}
