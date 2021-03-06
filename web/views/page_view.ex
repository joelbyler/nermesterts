defmodule Nermesterts.PageView do
  use Nermesterts.Web, :view

  alias Nermesterts.Phrase
  alias Nermesterts.Game

  def selected_game_phrase(%Phrase{message: message, has_token: true}, %Game{name: name}) do
    String.replace(message, "#GAME#", "<h3>" <> name <> "</h3>")
  end
  def selected_game_phrase(%Phrase{message: _, has_token: true}, _) do
    ""
  end
  def selected_game_phrase(phrase, _) do
    selected_game_phrase(phrase)
  end

  def selected_game_phrase(%Phrase{message: message, has_token: false}), do: message
  def selected_game_phrase(_), do: ""
end
