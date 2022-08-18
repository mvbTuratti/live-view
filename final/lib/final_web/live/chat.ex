defmodule FinalWeb.Chat do
    use FinalWeb, :live_view

    alias FinalWeb.Router.Helpers, as: Routes
    alias Final.Chats

    def mount(_,_, socket) do
        #chats = Chats.list_chats()
        chats = [%{id: "ssda-sda-ss",
        avatar: "light-on"}, %{id: "ssda-sda-sss",
        avatar: "light-off"}]
        socket =
            assign(socket,
                chats: chats,
                selected_chat: hd(chats)
            )
        {:ok, socket, temporary_assigns: [group_chats: []]}
    end

    def handle_params(%{"id" => id}, _, socket) do
      id = String.to_integer(id)

      chat = Chats.get_chat!(id)
      socket =
        assign(socket,
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
end
