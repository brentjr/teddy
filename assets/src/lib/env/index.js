window.env = window.env || {};

export const AUTH0_CLIENT_ID =
  window.env.REACT_APP_AUTH0_CLIENT_ID ||
  process.env.REACT_APP_AUTH0_CLIENT_ID ||
  '';

export const AUTH0_DOMAIN =
  window.env.REACT_APP_AUTH0_DOMAIN ||
  process.env.REACT_APP_AUTH0_DOMAIN ||
  '';

export const TEDDY_API_HOST =
  window.env.REACT_APP_TEDDY_API_HOST ||
  process.env.REACT_APP_TEDDY_API_HOST ||
  'http://localhost:4000';
