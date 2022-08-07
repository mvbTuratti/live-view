defmodule FinalWeb.Chat do
    use FinalWeb, :live_view

    alias FinalWeb.Router.Helpers, as: Routes
    alias Final.Chats

    def mount(_,_, socket) do
        chats = Chats.list_chats()
        socket =
            assign(socket,
                chats: chats,
                selected_chat: hd(chats)
            )
        {:ok, socket, temporary_assigns: [group_chats: []]}
    end

end
