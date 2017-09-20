defmodule BcBikeTentWeb.PageController do
  use BcBikeTentWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
