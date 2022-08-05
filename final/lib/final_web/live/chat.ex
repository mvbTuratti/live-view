defmodule FinalWeb.Chat do
  use FinalWeb, :live_view

  def mount(_,_, socket) do
    socket = assign_default(socket)
    {:ok, socket, temporary_assigns: [group_chats: []]}
  end

  def assign_default(socket) do
    assign(socket,
        group_chats: [{"abc-df", "light-on"}, {"sda-dew", "light-off"}]
    )

  end
end
