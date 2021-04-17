defmodule TeddyWeb.Router do
  @moduledoc """
  Phoenix router.
  """
  use TeddyWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  scope "/api", TeddyWeb do
    pipe_through :api
  end

  scope "/", TeddyWeb do
    pipe_through :browser

    get "/", PageController, :index
    get("/*path", PageController, :index)
  end
end
