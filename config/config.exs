# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :death_star, DeathStarWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "M9J0aPeIi7E+Dk0JmF3XFpo7FhoheISkHmZZngY+cNzB/e8ALBIIuz5tvM8J3D+S",
  render_errors: [view: DeathStarWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: DeathStar.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
