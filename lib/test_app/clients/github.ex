defmodule TestApp.Clients.Github do
  use HTTPoison.Base

  def process_url(url) do
    "https://api.github.com/" <> url
  end

  def process_request_headers(headers) do
  end

  def process_response_body(body) do
    JSEX.decode!(body, labels: :atom)
  end
end


defmodule TestApp.Clients.Github.User do
  alias TestApp.Clients.Github

  def retrieve(user) do
    Github.get("users/" <> user)
  end

  def list_gists(user) do
    Github.get("users/#{user}/gists")
  end
end

defmodule TestApp.Clients.Github.Gist do
  alias TestApp.Clients.Github

  def retrieve(id) do
    Github.get("gists/" <> id)
  end

  def list_public() do
    Github.get("gists/public")
  end
end
