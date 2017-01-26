# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :elixir_hero,
  ecto_repos: [ElixirHero.Repo]

# Configures the endpoint
config :elixir_hero, ElixirHero.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "jRp+n8QTl4eLLbMaqOU/Z9nwK+9UPVi/JE/qxDHC0soPvmGqIa+cGUYuETiy0t7T",
  render_errors: [view: ElixirHero.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ElixirHero.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
