use Mix.Config

# Repo
config :teddy, ecto_repos: [Teddy.Repo]

# Endpoint
config :teddy, TeddyWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "/IMFbuyNn8qFHEDR5nq4YSCZhSmQ5bn/42gG8xh0Hv9CwT6GD8HFyoaZ8NMOIBIN",
  render_errors: [view: TeddyWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Teddy.PubSub,
  live_view: [signing_salt: "j1ZxtwXZ"]

# Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Phoenix
config :phoenix, :json_library, Jason

import_config "#{Mix.env()}.exs"
