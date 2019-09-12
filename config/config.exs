# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :ieelf,
  ecto_repos: [Ieelf.Repo]

# Configures the endpoint
config :ieelf, IeelfWeb.Endpoint,
  live_view: [signing_salt: "9Zxg2eAxJMAjaacr9iWJuEt3oYMI1bh0"],
  url: [host: "localhost"],
  secret_key_base: "rjPBQU2l/22Ez2DPSnlo0KAJ6chCxuRtuFbTzghQR/qQp2f0McnqEXhMdaHO5pWs",
  render_errors: [view: IeelfWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Ieelf.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
