defmodule TestApp.Router do
  use Phoenix.Router

  plug Plug.Static, at: "/static", from: :test_app
  get "/", TestApp.Controllers.Pages, :index, as: :page
end
