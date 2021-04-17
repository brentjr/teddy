defmodule TeddyWeb do
  @moduledoc """
  The entrypoint for defining your web interface, such
  as controllers, views, channels and so on.

  This can be used in your application as:

      use TeddyWeb, :controller
      use TeddyWeb, :view

  The definitions below will be executed for every view,
  controller, etc, so keep them short and clean, focused
  on imports, uses and aliases.

  Do NOT define functions inside the quoted expressions
  below. Instead, define any helper function in modules
  and import those modules here.
  """

  ###
  # Public
  #

  @doc """
  When used, dispatch to the appropriate controller/view/etc.
  """
  defmacro __using__(which) when is_atom(which) do
    apply(__MODULE__, which, [])
  end

  @doc false
  def controller do
    quote do
      use Phoenix.Controller, namespace: TeddyWeb

      import Plug.Conn
      alias TeddyWeb.Router.Helpers, as: Routes
    end
  end

  @doc false
  def view do
    quote do
      use Phoenix.View,
        root: "lib/teddy_web/templates",
        namespace: TeddyWeb

      # Import convenience functions from controllers
      import Phoenix.Controller,
        only: [get_flash: 1, get_flash: 2, view_module: 1, view_template: 1]

      # Include shared imports and aliases for views
      unquote(view_helpers())
    end
  end

  @doc false
  def router do
    quote do
      use Phoenix.Router

      import Plug.Conn
      import Phoenix.Controller
    end
  end

  ###
  # Private
  #

  defp view_helpers do
    quote do
      import Phoenix.View

      alias TeddyWeb.Router.Helpers, as: Routes
    end
  end
end
