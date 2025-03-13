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

## TODO

- Slow startup

## Consider

- Move playgrounds
- More tests
- Add admin users view and playgrounds view

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.
