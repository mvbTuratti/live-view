defmodule Final.ChatsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Final.Chats` context.
  """

  @doc """
  Generate a chat.
  """
  def chat_fixture(attrs \\ %{}) do
    {:ok, chat} =
      attrs
      |> Enum.into(%{
        name: "some name"
      })
      |> Final.Chats.create_chat()

    chat
  end
end
