# PlayGrounder

An interactive web application to help parents and caregivers find and share local playgrounds. Built with React, Vite, and Chakra UI, using Supabase for the backend.

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

1. Clone the repository:
```bash
git clone https://github.com/jopppis/playgrounder.git
cd playgrounder
```

2. Install dependencies:
```bash
npm install
```

3. Create a `.env` file with your Supabase credentials:
```bash
VITE_SUPABASE_URL=your_supabase_url
VITE_SUPABASE_ANON_KEY=your_supabase_anon_key
```

4. Start the development server:
```bash
npm run dev
```

## TODO

### Before deployment

- Make popup title not truncate
- Remove account button

### Before release

- Add other Finnish cities
- Publish on Github
- Review code
- Security audit


## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.
