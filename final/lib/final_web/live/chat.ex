defmodule FinalWeb.Chat do
    use FinalWeb, :live_view

    alias FinalWeb.Router.Helpers, as: Routes
    alias Final.Chats
    alias Final.ChatLines.ChatLine

    def mount(_, %{"user_id" => id}, socket) do
        chats = Chats.list_user_chats(id) || []
        changeset = ChatLine.changeset(%ChatLine{}, %{})
        socket =
            assign(socket,
                user_id: id,
                chats: chats,
                selected_chat: head(chats),
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

    defp link_chat(chat) do
        assigns = %{avatar: chat.avatar}
        ~H"""
        <img src={"images/#{@avatar}.svg"} alt="discord" class="w-12 h-12 rounded-full mx-auto p-2">
        """
    end

    defp head([]), do: nil
    defp head([h | _]), do: h
end
