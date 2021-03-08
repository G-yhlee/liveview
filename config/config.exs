# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :liveview,
  ecto_repos: [Liveview.Repo]

# Configures the endpoint
config :liveview, LiveviewWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "lsUy0ilgQScn2PNeRt5dvXSdU86Q8djfs6unN5HVm2D1LdY1ZkfShwI8iuyWkzyg",
  render_errors: [view: LiveviewWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Liveview.PubSub,
  live_view: [signing_salt: "9anr+dML"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
