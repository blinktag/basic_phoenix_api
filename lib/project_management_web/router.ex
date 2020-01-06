defmodule ProjectManagementWeb.Router do
  use ProjectManagementWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  # scope "/", ProjectManagementWeb do
  #   pipe_through :browser

  #   get "/", PageController, :index
  # end

  # Other scopes may use custom stacks.
  scope "/api", ProjectManagementWeb do
    pipe_through :api

    # We want to be read-only, so allow only index and show
    resources("/projects", ProjectController, only: [:index, :show])
    resources("/documents", DocumentController, only: [:index, :show])
  end
end
