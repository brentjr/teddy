defmodule TeddyWeb.Router do
  @moduledoc """
  Phoenix router.
  """
  use TeddyWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", TeddyWeb do
    pipe_through :api
  end
end
