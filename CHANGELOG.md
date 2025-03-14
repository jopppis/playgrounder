# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Added
- Unnamed playground filter

### Changed
- Only fetch distinct cities
- Use select boxes for all filters

## [0.17.1] - 2025-03-13

### Fixed
- Map move event not triggered on initial load

## [0.17.0] - 2025-03-13

### Changed
- Reduced interval for login toast to 1 minute
- Synchronize default zoom levels

### Added
- Map state in URL parameters for sharing

## [0.16.1] - 2025-03-13

### Fixed
- Fix issues with ratings during logins and logouts

## [0.16.0] - 2025-03-13

### Changed
- Optimize rating fetching
- Rename playground_ratings view to v_playground_ratings

## [0.15.1] - 2025-03-11

### Changed
- Increased bbox padding factor to 10

## [0.15.0] - 2025-03-11

### Fixed
- Show login and signup modals on top of menu

### Added
- Add playground proposal feature

## [0.14.3] - 2025-03-11

### Changed
- Improve no visible playgrounds notification
- Do not zoom automatically to playgrounds after filtering

### Added
- No visible playgrounds notification modal

## [0.14.2] - 2025-03-11

### Fixed
- Fixed admin status check

## [0.14.1] - 2025-03-11

### Changed
- Use Chakra UI dialogs for modals

## [0.14.0] - 2025-03-11

### Added
- Limit data fetched by using map bounds

### Fixed
- Fixed search bar visuals

## [0.13.1] - 2025-03-10

### Fixed
- Fix build

## [0.13.0] - 2025-03-10

### Added
- Edit playground functionality
- Admin panel
- No city filter
- Search query filter
- Zoom to city on selection
- Add link to Google Maps search for playground name

### Changed
- Improve city determination

## [0.12.8] - 2025-03-08

## [0.12.7] - 2025-03-08

### Changed
- Optimized data fetching to avoid repeated requests

## [0.12.6] - 2025-03-04

### Changed
- Disable clustering at zoom level 13

## [0.12.5] - 2025-03-04

### Added
- Unnamed playgrounds

## [0.12.4] - 2025-03-03

## [0.12.3] - 2025-03-03

### Fixed
- Add data source to user filters

### Changed
- Always add coordinate to properties

## [0.12.2] - 2025-03-02

### Changed
- Tweaked clustering options

## [0.12.1] - 2025-03-02

### Changed
- Disable spiderfy on max zoom

### Fixed
- Fix build

## [0.12.0] - 2025-03-02

### Added
- OSM attribution to data sources
- Data source to playgrounds

## [0.11.10] - 2025-03-02

### Fixed
- Added safe area inset bottom to map and menu drawer

## [0.11.9] - 2025-03-02

### Added
- Add location permission to pwa manifest
- Data for Oulu

### Changed
- Improved location watching


## [0.11.8] - 2025-03-01

### Added
- Added coordinates to playground popup if no address available

## [0.11.7] - 2025-03-01

### Changed
- Improve filter menu design on small screens

## [0.11.6] - 2025-03-01

## [0.11.5] - 2025-03-01

### Changed
- Changed location watching logic to periodically request location

## [0.11.4] - 2025-03-01

## [0.11.3] - 2025-03-01

### Changed
- Disable clustering at zoom level 11
- Add padding to filter menu on small screens
- Add small paddig to the bottom of menu

## [0.11.2] - 2025-03-01

### Added
- Added contact email to About section

## [0.11.1] - 2025-03-01

### Changed
- Disable clustering at zoom level 12

## [0.11.0] - 2025-03-01

### Added
- Added location watching instead of single location update

## [0.10.3] - 2025-03-01

### Fixed
- Fixed popup closing when visit status changes

## [0.10.2] - 2025-03-01
### Fixed
- Repeated marker renderings on page load

## [0.10.1] - 2025-03-01

### Changed
- Do not automatically move map to user location when user is interacting with the map

### Fixed
- Fixed jumping to user location on every interaction
- Repeated marker renderings on page load

## [0.10.0] - 2025-02-28

### Added
- Map marker clustering

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
