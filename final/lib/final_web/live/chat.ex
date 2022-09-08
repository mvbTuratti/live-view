defmodule FinalWeb.Chat do
    use FinalWeb, :live_view

    alias FinalWeb.Router.Helpers, as: Routes
    alias Final.Chats
    alias Final.ChatLines.ChatLine
    alias Phoenix.LiveView.JS
    alias Final.Accounts
    alias Final.ChatLines

    def mount(_, %{"user_id" => id}, socket) do
        chats = Chats.list_user_chats(id) || []
        changeset = ChatLine.changeset(%ChatLine{}, %{})
        user = Accounts.get_nickname!(id)
        IO.inspect(head(chats))
        socket =
            assign(socket,
                user_id: id,
                chats: chats,
                selected_chat: head(chats),
                nickname: user,
                changeset: changeset
            )
        {:ok, socket, temporary_assigns: [chats: []]}
    end

    def handle_params(%{"id" => id}, _, socket) do
      id = String.to_integer(id)
      chats = Chats.list_user_chats(socket.assigns.user_id) || []
      chat = Chats.get_chat!(id)
      socket =
        assign(socket,
        chats: chats,
        selected_chat: chat,
        page_title: "Chat #{chat.name}")
      {:noreply, socket}
    end

    def handle_params(_param, _, socket) do
      {:noreply, socket}
    end

    def handle_event("save_line", %{"line" => line}, socket) do
      #preload = Chats.preload_chat(socket.assigns.selected_chat.id, :chat_line)
      change = %{user_name: socket.assigns.nickname, line_text: line, chat_id: socket.assigns.selected_chat.id}
      case ChatLines.create_chat_line(change) do
        {:ok, v} -> IO.inspect(v) #adicionar ao chat...
        {:error, er} -> IO.inspect(er)
      end

      {:noreply, socket}
    end

    def handle_event("confirmation", _, socket) do

      {:noreply, socket}
    end

    defp link_chat(chat) do
        assigns = %{avatar: chat.avatar}
        ~H"""
        <img src={"images/#{@avatar}.svg"} alt="discord" class="w-12 h-12 rounded-full mx-auto p-2">
        """
    end

    defp head([]), do: nil
    defp head([h | _]), do: h
end
