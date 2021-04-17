defmodule TeddyWeb.ErrorView do
  @moduledoc """
  Default error view.
  """
  use TeddyWeb, :view

  ###
  # Public
  #

  @doc """
  Template not found message.
  """
  def template_not_found(template, _assigns) do
    Phoenix.Controller.status_message_from_template(template)
  end
end
