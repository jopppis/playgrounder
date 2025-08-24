# PlayGrounder

[![main](https://github.com/jopppis/playgrounder/actions/workflows/main.yml/badge.svg)](https://codecov.io/gh/jopppis/playgrounder) [![codecov](https://codecov.io/gh/jopppis/playgrounder/graph/badge.svg?token=fj2PiGnj23)](https://codecov.io/gh/jopppis/playgrounder)

An interactive web application to help parents and caregivers find and share local playgrounds. Built with React, Vite, and Chakra UI, using Supabase for the backend.

![PlayGrounder Screenshot](./screenshot.png)


## Features

- Interactive map showing nearby playgrounds
- User authentication for tracking visited playgrounds
- Rating system
- Mobile-friendly design

## Tech Stack

- React + TypeScript
- Vite for build tooling
- Chakra UI for components
- Leaflet for maps
- Supabase for backend and authentication

## Development

Clone the repository:
```bash
git clone https://github.com/jopppis/playgrounder.git
cd playgrounder
```

Install dependencies:
```bash
npm install
```

```bash
npx supabase start
```

Create a `.env.local`, `.env.development` or `.env.production` file from the `.env.example` file and fill in the values. `npx supabase start` will output the values for `VITE_SUPABASE_URL` and `VITE_SUPABASE_ANON_KEY`.

Start the development server:
```bash
npm run dev
```

## Linting and Code Quality

The project uses ESLint and Prettier for code quality and formatting:

```bash
# Run ESLint to check for issues
npm run lint

# Format code with Prettier (automatically runs on pre-commit)
npx prettier --write .

# Run tests
npm run test

# Run tests with coverage
npm run test:coverage

# Run tests in watch mode during development
npm run test:watch
```

### Pre-commit Hooks

The project uses Husky with lint-staged to automatically:

- Format code with Prettier
- Fix ESLint issues
- Run related tests

These checks run automatically when you commit changes.

## Building

Build the project for production:

```bash
# Build the application
npm run build

# Preview the built application locally
npm run preview
```

The built files will be output to the `dist/` directory.

## Releases

The project uses automated releases with changelog generation. The releases should be done only from the `main` branch. Run the following command to create a new version:

```bash
# Create a new patch version (0.19.2 -> 0.19.3)
npm version patch

# Create a new minor version (0.19.2 -> 0.20.0)
npm version minor

# Create a new major version (0.19.2 -> 1.0.0)
npm version major
```

The release process automatically:

1. Updates the changelog with new version
2. Creates a git tag
3. Pushes changes and tags to GitHub
4. Creates a GitHub release with changelog notes

Note that the release requires Github CLI and push access in the repository.

## TODO

- Slow startup

## Consider

- Move playgrounds
- More tests
- Add admin users view and playgrounds view

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.
