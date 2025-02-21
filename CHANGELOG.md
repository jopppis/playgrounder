# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Changed
- Improve popup layout

### Fixed
- Menu drawer not working well on small screens
- Added Turnstile captcha to forgot password
### Added
- Optimistic rating update

## [0.2.0] - 2025-02-21

### Added
- Cloudflare Turnstile support for bot protection
- Delete account functionality
- Forgot password functionality
- Change password functionality
- Version number in About-section

### Changed
- By minumum require 8 characters for password
- Do not show mark visited switch if user is not logged in
- Make location control button same size as other control buttons
- Improve filter menu design on small screens

## [0.1.3] - 2025-02-20

### Added
- Password manager support

## [0.1.2] - 2025-02-20

### Fixed
- Automatic release process not working

## [0.1.1] - 2025-02-20

### Added
- Automatic release process

## [0.1.0] - 2025-02-20

### Added
- Initial project setup with React, Vite, and TypeScript
- Interactive playground map functionality using Leaflet
- Supabase integration for database and authentication
- Chakra UI for component styling
- i18n support for internationalization
- Testing setup with Vitest
- ESLint configuration
- Husky for Git hooks
- GitHub Actions CI/CD pipeline
