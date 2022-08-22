defmodule Final.ChatLines.ChatLine do
  use Ecto.Schema
  import Ecto.Changeset

  schema "chat_line" do
    field :line_text, :string
    field :user_name, :string

    belongs_to :chat, Final.Chats.Chat

    timestamps()
  end

  @doc false
  def changeset(chat_line, attrs \\ %{}) do
    chat_line
    |> cast(attrs, [:user_name, :line_text])
    |> validate_required([:user_name, :line_text])
  end
end
