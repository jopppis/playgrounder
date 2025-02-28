# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Fixed
- Improved loading state handling in SignUp and ChangePassword components
- Enhanced test stability with better async handling

## [0.9.3] - 2025-02-27

### Changed
- Improved performance of map markers by drawing them on cavas when zooming out

## [0.9.2] - 2025-02-27

### Fixed
- Reset Turnstile captcha on auth error

## [0.9.1] - 2025-02-27

### Changed
- Enable Turnstile captcha in development

### Fixed
- Added Turnstile support to ChangePassword component to fix password change failures when Turnstile is enabled

## [0.9.0] - 2025-02-27

### Added
- Login toast throttling
- Security headers for both development and production environments
- Vercel configuration file with security headers

### Changed
- Prevent map from automatically moving to user position on page load when a popup is open

### Fixed
- Fixed change password functionality that was incorrectly reporting "Current password is incorrect" even with valid credentials

### Removed
- Removed deprecated and unused dependencies

## [0.8.4] - 2025-02-26

### Added
- Tampere playgrounds
- Turku playgrounds

### Changed
- Tweaked padding in filter menu

## [0.8.3] - 2025-02-25

### Fixed
- Fixed build

## [0.8.2] - 2025-02-25

### Added
- Added no ratings filter

### Changed
- Make filter menu scorllable

## [0.8.1] - 2025-02-24

### Changed
- Make popup elements larger

## [0.8.0] - 2025-02-24

### Added
- Added default public ratings setting

## [0.7.6] - 2025-02-24

### Fixed
- Fix build

## [0.7.5] - 2025-02-24

### Changed
- Updated attributions and moved to separate component
- Hide drawer when clicking outside it

## [0.7.4] - 2025-02-24

### Fixed
- Try to fix layer control falling off the screen on mobile Safari

### Added
- Added Account section to menu drawer
- Info tip for public rating explanation

### Changed
- Move stats to own section in menu drawer

## [0.7.3] - 2025-02-24

### Changed
- Increased filter bar size
- Increased map control sizes

## [0.7.2] - 2025-02-24

### Changed
- Toaster max 2 toasts

## [0.7.1] - 2025-02-24

### Fixed
- Filters for non-logged in users

## [0.7.0] - 2025-02-24

### Changed
- Use new icon

## [0.6.0] - 2025-02-24

### Changed
- Use canvas renderer for better performance
- Improved popup design
- Improved stats design

### Added
- Request location on mount
- Remove filter button
- Save user filters to database
- Visual cue of active filters
- Statistics of current city

## [0.5.1] - 2025-02-24

### Fixed
- Build failing

## [0.5.0] - 2025-02-23

### Added
- Stats section in menu drawer
- City based filtering

### Changed
- Language switcher design
- Make toasts closable

## [0.4.1] - 2025-02-22

## [0.4.0] - 2025-02-21

### Added
- PWA support
- Toast when user is not logged in and opens popup

### Changed
- Improve popup when not logged in

## [0.3.0] - 2025-02-21

### Changed
- Improve popup layout

### Fixed
- Menu drawer not working well on small screens
- Added Turnstile captcha to forgot password
- Do not open forgot password modal on top of login modal

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
