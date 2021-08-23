# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :somecomic,
  ecto_repos: [Somecomic.Repo]

# Configures the endpoint
config :somecomic, SomecomicWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "mXwu6R2g5CoiOer9wGrJdO5zmOJ92RGdv5h7bsUrcRSd5w2DrwWpO7iZsAiOR+ER",
  render_errors: [view: SomecomicWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: Somecomic.PubSub,
  live_view: [signing_salt: "DKNycANq"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
