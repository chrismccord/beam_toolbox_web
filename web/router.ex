defmodule BeamToolboxWeb.Router do
  use Phoenix.Router

  get "/", BeamToolboxWeb.PageController, :index, as: :page

  scope alias: BeamToolboxWeb do
    resources "projects", ProjectController
    resources "categories", CategoryController
  end
end
