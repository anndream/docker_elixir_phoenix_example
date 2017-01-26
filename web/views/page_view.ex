defmodule ElixirHero.PageView do
  use ElixirHero.Web, :view

  def index(conn, %{"hostname" => hostname}) do
    render conn, "index.html", hostname: hostname
  end
end
