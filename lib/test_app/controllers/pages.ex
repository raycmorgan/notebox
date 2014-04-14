defmodule TestApp.Controllers.Pages do
  use Phoenix.Controller

  alias TestApp.Clients.Github

  def index(conn) do
    Github.start

    gists = Github.User.list_gists("raycmorgan")

    gists[:body]
      |> IO.inspect
      |> Enum.map(&Dict.get(&1, :id))
      |> IO.inspect

    # text conn, "#{user[:body][:login]} - #{user[:body][:id]}"
    text(conn, "ok")
  end
end

"""

binder
notebook
journal
jot
paper
write
code
folder
scratch
pad
scribble
doodle

"""
