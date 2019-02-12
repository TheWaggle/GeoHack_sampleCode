defmodule AedmapWeb.PageController do
  use AedmapWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

end
