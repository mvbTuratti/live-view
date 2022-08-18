defmodule Final.ChatLinesTest do
  use Final.DataCase

  alias Final.ChatLines

  describe "chat_line" do
    alias Final.ChatLines.ChatLine

    import Final.ChatLinesFixtures

    @invalid_attrs %{chat_id: nil, line_text: nil, user_id: nil}

    test "list_chat_line/0 returns all chat_line" do
      chat_line = chat_line_fixture()
      assert ChatLines.list_chat_line() == [chat_line]
    end

    test "get_chat_line!/1 returns the chat_line with given id" do
      chat_line = chat_line_fixture()
      assert ChatLines.get_chat_line!(chat_line.id) == chat_line
    end

    test "create_chat_line/1 with valid data creates a chat_line" do
      valid_attrs = %{chat_id: 42, line_text: "some line_text", user_id: 42}

      assert {:ok, %ChatLine{} = chat_line} = ChatLines.create_chat_line(valid_attrs)
      assert chat_line.chat_id == 42
      assert chat_line.line_text == "some line_text"
      assert chat_line.user_id == 42
    end

    test "create_chat_line/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = ChatLines.create_chat_line(@invalid_attrs)
    end

    test "update_chat_line/2 with valid data updates the chat_line" do
      chat_line = chat_line_fixture()
      update_attrs = %{chat_id: 43, line_text: "some updated line_text", user_id: 43}

      assert {:ok, %ChatLine{} = chat_line} = ChatLines.update_chat_line(chat_line, update_attrs)
      assert chat_line.chat_id == 43
      assert chat_line.line_text == "some updated line_text"
      assert chat_line.user_id == 43
    end

    test "update_chat_line/2 with invalid data returns error changeset" do
      chat_line = chat_line_fixture()
      assert {:error, %Ecto.Changeset{}} = ChatLines.update_chat_line(chat_line, @invalid_attrs)
      assert chat_line == ChatLines.get_chat_line!(chat_line.id)
    end

    test "delete_chat_line/1 deletes the chat_line" do
      chat_line = chat_line_fixture()
      assert {:ok, %ChatLine{}} = ChatLines.delete_chat_line(chat_line)
      assert_raise Ecto.NoResultsError, fn -> ChatLines.get_chat_line!(chat_line.id) end
    end

    test "change_chat_line/1 returns a chat_line changeset" do
      chat_line = chat_line_fixture()
      assert %Ecto.Changeset{} = ChatLines.change_chat_line(chat_line)
    end
  end
end
