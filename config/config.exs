# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :phoenix_hello,
  ecto_repos: [PhoenixHello.Repo]

# Configures the endpoint
config :phoenix_hello, PhoenixHelloWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "ZU+or6f2VRnm1zec0f72Y7sRf4l9SvDBJ1ZZf8cxx+KYClDk1+5EZCrXKYHXV7V0",
  render_errors: [view: PhoenixHelloWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PhoenixHello.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
