defmodule Teddy.Repo do
  @moduledoc """
  Ecto Repo with Postgres adapter.
  """
  use Ecto.Repo,
    otp_app: :teddy,
    adapter: Ecto.Adapters.Postgres
end
