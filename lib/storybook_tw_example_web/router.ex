defmodule StorybookTwExampleWeb.Router do
  use StorybookTwExampleWeb, :router

  use StorybookTwExampleWeb, :router
  import PhoenixStorybook.Router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_live_flash
    plug :put_root_layout, html: {StorybookTwExampleWeb.Layouts, :root}
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/" do
    storybook_assets()
  end

  scope "/", StorybookTwExampleWeb do
    pipe_through(:browser)
    live_storybook("/storybook", backend_module: StorybookTwExampleWeb.Storybook)
  end

  scope "/", StorybookTwExampleWeb do
    pipe_through :browser

    get "/", PageController, :home
  end

  # Other scopes may use custom stacks.
  # scope "/api", StorybookTwExampleWeb do
  #   pipe_through :api
  # end
end
