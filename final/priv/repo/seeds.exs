# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Final.Repo.insert!(%Final.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.
alias Final.Repo
alias Final.Chats.Chat
alias Final.ChatLines.ChatLine


%Chat{
  name: "ssda-sda-ss",
  avatar: "light-on",
  chat_line: [
    %ChatLine{
      line_text: "this is a simple line test",
      user_name: "pedrinho123"
    }
  ]
}
|> Repo.insert!()

%Chat{
  name: "sa-sda-ss",
  avatar: "light-off",
  chat_line: [
    %ChatLine{
      line_text: "this is a simple line test",
      user_name: "pedrinho123"
    }
  ]
}
|> Repo.insert!()
