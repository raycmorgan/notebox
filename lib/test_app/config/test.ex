defmodule TestApp.Config.Test do
  use TestApp.Config

  config :router, port: 4001,
                  ssl: false

  config :plugs, code_reload: true

  config :logger, level: :debug
end


