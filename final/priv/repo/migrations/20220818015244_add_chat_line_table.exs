defmodule Final.Repo.Migrations.AddChatLineTable do
  use Ecto.Migration

  def change do
    create table(:chat_line) do
      add :chat_id, references(:chats)
      add :user_name, :string
      add :line_text, :string

      timestamps()
    end
  end
end
