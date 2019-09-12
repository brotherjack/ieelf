defmodule IeelfWeb.HomeLive do
  use Phoenix.LiveView

  alias IeelfWeb.Router.Helpers, as: Routes

  def mount(_session, socket) do
    {:ok, socket}
  end

  def render(assigns) do
    ~L"""
    <%= live_link "Test", to: Routes.live_path(@socket, IeelfWeb.TestLive) %>
    <div>Hello</div>
    """
  end
end
