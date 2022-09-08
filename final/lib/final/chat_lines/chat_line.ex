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
    |> cast(attrs, [:user_name, :line_text, :chat_id])
    |> validate_required([:user_name, :line_text, :chat_id])
    |> cast_assoc(:chat)
    #|> put_change(:chat, attrs.id)
  end

  def set_chat_changeset(struct, attrs \\ %{}) do
    struct
    |> cast(attrs,[:chat_id])
  end
end
