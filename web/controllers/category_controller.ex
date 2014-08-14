defmodule BeamToolboxWeb.CategoryController do
  use Phoenix.Controller
  alias BeamToolboxData.Models.Project
  alias BeamToolboxData.Models.Category

  def show(conn, %{"id" => slug}) do
    category = Category.find_by_slug(slug)
    projects = Project.for_category(category)
    render conn, "show", %{category: category, projects: projects}
  end
end
