defmodule IeelfWeb.Router do
  use IeelfWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug Phoenix.LiveView.Flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", IeelfWeb do
    pipe_through :browser

    live "/", HomeLive
    live "/test", TestLive
  end

  # Other scopes may use custom stacks.
  # scope "/api", IeelfWeb do
  #   pipe_through :api
  # end
end
