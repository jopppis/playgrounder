import React from 'react';
import ReactDOM from 'react-dom/client';
import { BrowserRouter } from 'react-router-dom';
import Router from './Router';
import { Provider } from './components/Provider';
import { Toaster } from './components/ui/toaster';
import './i18n/config';
import './index.css';

const root = ReactDOM.createRoot(document.getElementById('root')!);

root.render(
  <React.StrictMode>
    <Provider>
      <BrowserRouter>
        <Router />
        <Toaster />
      </BrowserRouter>
    </Provider>
  </React.StrictMode>,
);
