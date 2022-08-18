defmodule Final.Repo.Migrations.CreateChatLine do
  use Ecto.Migration

  def change do
    create table(:chats) do
      add :user_id, references(:users)
      add :name, :string
      add :avatar, :string

      timestamps()
    end
  end
end
