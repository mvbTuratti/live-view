defmodule FinalWeb.LightLive do
  use FinalWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, assign(socket, brightness: 10, temp: 3000)}
  end

  def render(assigns) do
    ~H"""
    <h1> Front Porch Light</h1>
    <div id="light">
      <div class="meter">
        <span style={"width: #{@brightness}%;background-color: #{temp_color(@temp)}"}>
          <%= @brightness %>%
        </span>
      </div>
      <button phx-click="off">
        <img src="images/light-off.svg">
      </button>
      <button phx-click="down">
        <img src="images/down.svg">
      </button>
      <button phx-click="up">
        <img src="images/up.svg">
      </button>
      <button phx-click="on">
        <img src="images/light-on.svg">
      </button>
      <button phx-click="light">
        <img src="images/refresh.svg">
      </button>
      <form phx-change="update">
            <input type="range" min="0" max="100" name="brightness" value={"#{@brightness}"}/>
      </form>
      <form phx-change="color">
        <%= for temperature <- [3000, 4000, 5000] do %>
          <%= temp_checkbox(%{temperature: temperature, checked: temperature === @temp}) %>
        <% end %>
      </form>
    </div>
    """
  end

  def handle_event("on", _, socket) do
    {:noreply, assign(socket, :brightness, 100)}
  end
  def handle_event("off", _, socket) do
    {:noreply, assign(socket, :brightness, 0)}
  end
  def handle_event("up", _, socket) do
    socket = update(socket, :brightness, &(Kernel.min(&1 + 10, 100)))
    {:noreply, socket}
  end
  def handle_event("down", _, socket) do
    socket = update(socket, :brightness, &(Kernel.max(&1 - 10, 0)))
    {:noreply, socket}
  end
  def handle_event("light", _, socket) do
    {:noreply, assign(socket, :brightness, Enum.random(0..100))}
  end
  def handle_event("update", %{"brightness" => brightness}, socket) do
    socket = assign(socket, brightness: brightness)
    {:noreply, socket}
  end

  def handle_event("color", %{"temperature" => color}, socket) do
    color =
      color
      |> String.to_integer()
    socket = assign(socket, temp: color)
    {:noreply, socket}
  end

  defp temp_checkbox(assigns) do
    ~H"""
    <input type="radio" id={"#{@temperature}"} name="temperature" value={"#{@temperature}"} checked={@checked}/>
    <label for={"#{@temperature}"}><%= @temperature %></label>
    """
  end
  defp temp_color(3000), do: "#F1C40D"
  defp temp_color(4000), do: "#FEFF66"
  defp temp_color(5000), do: "#99CCFF"
end
