defmodule IeelfWeb.TestLive do
  use Phoenix.LiveView

  alias IeelfWeb.Router.Helpers, as: Routes

  def mount(_session, socket) do
    {:ok, socket}
  end

  def render(assigns) do
    ~L"""
    <%= live_link "Home", to: Routes.live_path(@socket, IeelfWeb.HomeLive) %>
    <div>Test</div>
    """
  end
end
