import React from 'react';
import { useHistory } from 'react-router-dom';
import PropTypes from 'prop-types';
import { Auth0Provider } from '@auth0/auth0-react';
import { AUTH0_CLIENT_ID, AUTH0_DOMAIN } from '../env';

const Auth0ProviderWithHistory = ({ children }) => {
  const history = useHistory();

  const onRedirectCallback = (appState) => {
    history.push(appState?.returnTo || window.location.pathname);
  };

  return (
    <Auth0Provider
      domain={AUTH0_DOMAIN}
      clientId={AUTH0_CLIENT_ID}
      redirectUri={window.location.origin}
      onRedirectCallback={onRedirectCallback}
    >
      {children}
    </Auth0Provider>
  );
};

Auth0ProviderWithHistory.propTypes = {
  children: PropTypes.node.isRequired
};
export default Auth0ProviderWithHistory;
