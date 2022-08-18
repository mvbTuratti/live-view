defmodule Final.Chats.Chat do
  use Ecto.Schema
  import Ecto.Changeset

  schema "chats" do
    field :name, :string
    field :avatar, :string

    has_many :chat_line, Final.ChatLines.ChatLine
    belongs_to :user, Final.Accounts.User

    timestamps()
  end

  @doc false
  def changeset(chat, attrs) do
    chat
    |> cast(attrs, [:name, :avatar])
    |> validate_required([:name, :avatar])
    |> unique_constraint(:name)
  end
end
