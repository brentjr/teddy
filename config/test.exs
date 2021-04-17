use Mix.Config

# Repo
config :teddy, Teddy.Repo,
  username: "postgres",
  password: "postgres",
  database: "teddy_test#{System.get_env("MIX_TEST_PARTITION")}",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

# Endpoint
config :teddy, TeddyWeb.Endpoint,
  http: [port: 4002],
  server: false

# Logger
config :logger, level: :warn
