defmodule TestApp.Mixfile do
  use Mix.Project

  def project do
    [ app: :test_app,
      version: "0.0.1",
      elixir: "~> 0.13.0-dev",
      deps: deps ]
  end

  # Configuration for the OTP application
  def application do
    [ applications: [:httpoison, :test_app], 
      mod: { TestApp, [] }]
  end

  # Returns the list of dependencies in the format:
  # { :foobar, git: "https://github.com/elixir-lang/foobar.git", tag: "0.1" }
  #
  # To specify particular versions, regardless of the tag, do:
  # { :barbat, "~> 0.1", github: "elixir-lang/barbat" }
  defp deps do
    [
      {:phoenix, github: "phoenixframework/phoenix"},
      {:ets_lru, github: "cloudant/ets_lru"},
      {:httpoison, github: "raycmorgan/httpoison"},
      {:jsex, github: "raycmorgan/jsex"}
    ]
  end
end
