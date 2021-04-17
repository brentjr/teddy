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
  check_origin: false,
  watchers: [
    node: [
      "node_modules/react-scripts/bin/react-scripts.js",
      "start",
      cd: Path.expand("../assets", __DIR__)
    ]
  ],
  live_reload: [
    patterns: [
      ~r"priv/static/.*(js|css|png|jpeg|jpg|gif|svg)$",
      ~r"priv/gettext/.*(po)$",
      ~r"lib/teddy_web/(live|views)/.*(ex)$",
      ~r"lib/teddy_web/templates/.*(eex)$"
    ]
  ]

# Logger
config :logger, :console, format: "[$level] $message\n"

# Phoenix
config :phoenix, :stacktrace_depth, 20
config :phoenix, :plug_init_mode, :runtime
