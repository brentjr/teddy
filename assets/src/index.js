import 'react-app-polyfill/ie9';
import 'react-app-polyfill/stable';
import ApolloClient from 'apollo-boost';
import { InMemoryCache } from '@apollo/client';
import { ApolloProvider } from '@apollo/react-hooks';
import React from 'react';
import ReactDOM from 'react-dom';
import { BrowserRouter as Router } from 'react-router-dom';
import './index.css';
import Auth0ProviderWithHistory from './lib/auth0-provider-with-history';
import { TEDDY_API_HOST } from './lib/env';
import { Root } from './components';

const client = new ApolloClient({
  uri: `${TEDDY_API_HOST}/graphql`,
  cache: new InMemoryCache({})
});

ReactDOM.render(
  <ApolloProvider client={client}>
    <Router>
      <Auth0ProviderWithHistory>
        <Root />
      </Auth0ProviderWithHistory>
    </Router>
  </ApolloProvider>,
  document.getElementById('root')
);
