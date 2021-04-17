defmodule Teddy.Application do
  @moduledoc """
  The `Teddy` application.
  """
  use Application

  ###
  # Public
  #

  @doc """
  Starts the `Teddy` application.
  """
  def start(_type, _args) do
    children = [
      Teddy.Repo,
      TeddyWeb.Endpoint
    ]

    opts = [strategy: :one_for_one, name: Teddy.Supervisor]
    Supervisor.start_link(children, opts)
  end

  @doc """
  Handles config changes.
  """
  def config_change(changed, _new, removed) do
    TeddyWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
