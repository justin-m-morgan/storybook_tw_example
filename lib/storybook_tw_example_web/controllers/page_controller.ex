defmodule StorybookTwExampleWeb.PageController do
  use StorybookTwExampleWeb, :controller

  def home(conn, _params) do
    render(conn, :home)
  end
end
