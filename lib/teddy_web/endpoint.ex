defmodule TeddyWeb.Endpoint do
  @moduledoc """
  Phoenix endpoint.
  """
  use Phoenix.Endpoint, otp_app: :teddy

  @session_options [
    store: :cookie,
    key: "_teddy_key",
    signing_salt: "283sy4W4"
  ]

  plug Plug.Static,
    at: "/",
    from: :teddy,
    gzip: false,
    only: ~w(css fonts images js favicon.ico robots.txt)

  if code_reloading? do
    plug Phoenix.CodeReloader
    plug Phoenix.Ecto.CheckRepoStatus, otp_app: :teddy
  end

  plug Plug.RequestId

  plug Plug.Parsers,
    parsers: [:urlencoded, :multipart, :json],
    pass: ["*/*"],
    json_decoder: Phoenix.json_library()

  plug Plug.MethodOverride
  plug Plug.Head
  plug Plug.Session, @session_options
  plug TeddyWeb.Router
end
