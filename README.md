# PlayGrounder

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

Create a `.env` file with your Supabase credentials:
```bash
VITE_SUPABASE_URL=your_supabase_project_url
VITE_SUPABASE_ANON_KEY=your_supabase_anon_key
VITE_TURNSTILE_SITE_KEY=your-turnstile-site-key # not needed in development
VITE_APP_ENV=development
```

Creating a new Supabase project can be done by first creating an empty project and then running the migraitons followed by `seed.sql` that fills the playgrounds table.

Start the development server:
```bash
npm run dev
```

## TODO

- Add other Finnish cities
- Security audit
- Run coverage and improve it
- Linter warnings

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.
