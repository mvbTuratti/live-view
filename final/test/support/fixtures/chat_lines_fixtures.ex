defmodule Final.ChatLinesFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Final.ChatLines` context.
  """

  @doc """
  Generate a chat_line.
  """
  def chat_line_fixture(attrs \\ %{}) do
    {:ok, chat_line} =
      attrs
      |> Enum.into(%{
        chat_id: 42,
        line_text: "some line_text",
        user_id: 42
      })
      |> Final.ChatLines.create_chat_line()

    chat_line
  end
end
