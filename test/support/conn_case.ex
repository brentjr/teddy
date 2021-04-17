defmodule TeddyWeb.ConnCase do
  @moduledoc false
  use ExUnit.CaseTemplate

  using do
    quote do
      import Plug.Conn
      import Phoenix.ConnTest
      import TeddyWeb.ConnCase

      alias TeddyWeb.Router.Helpers, as: Routes

      @endpoint TeddyWeb.Endpoint
    end
  end

  setup tags do
    :ok = Ecto.Adapters.SQL.Sandbox.checkout(Teddy.Repo)

    unless tags[:async] do
      Ecto.Adapters.SQL.Sandbox.mode(Teddy.Repo, {:shared, self()})
    end

    {:ok, conn: Phoenix.ConnTest.build_conn()}
  end
end
