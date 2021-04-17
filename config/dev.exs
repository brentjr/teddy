use Mix.Config

# Repo
config :teddy, Teddy.Repo,
  username: "postgres",
  password: "postgres",
  database: "teddy_dev",
  hostname: "localhost",
  show_sensitive_data_on_connection_error: true,
  pool_size: 10

# Endpoint
config :teddy, TeddyWeb.Endpoint,
  http: [port: 4000],
  debug_errors: true,
  code_reloader: true,
  check_origin: false

# Logger
config :logger, :console, format: "[$level] $message\n"

# Phoenix
config :phoenix, :stacktrace_depth, 20
config :phoenix, :plug_init_mode, :runtime
