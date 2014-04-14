defmodule TestApp.Config.Dev do
  use TestApp.Config

  config :router, port: 4000,
                  ssl: false

  config :plugs, code_reload: false

  config :logger, level: :debug
end


