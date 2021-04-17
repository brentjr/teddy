use Mix.Config

# Endpoint
config :teddy, TeddyWeb.Endpoint,
  url: [host: "example.com", port: 80],
  cache_static_manifest: "priv/static/cache_manifest.json"

# Logger
config :logger, level: :info

import_config "prod.secret.exs"
