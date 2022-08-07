defmodule Final.Repo.Migrations.AddChatPicture do
  use Ecto.Migration


  def change do
    alter table(:chats) do
      add :avatar, :string
    end
  end
end
