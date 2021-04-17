defmodule TeddyWeb.ChannelCase do
  @moduledoc false
  use ExUnit.CaseTemplate

  using do
    quote do
      import Phoenix.ChannelTest
      import TeddyWeb.ChannelCase

      @endpoint TeddyWeb.Endpoint
    end
  end

  setup tags do
    :ok = Ecto.Adapters.SQL.Sandbox.checkout(Teddy.Repo)

    unless tags[:async] do
      Ecto.Adapters.SQL.Sandbox.mode(Teddy.Repo, {:shared, self()})
    end

    :ok
  end
end
