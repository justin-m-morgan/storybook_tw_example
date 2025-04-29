import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :storybook_tw_example, StorybookTwExampleWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "e/of8f55pf6iCp6/nY7VzcNoVPsYarjlMdVnhLIA+HE5EM5rjUL2+LH7vuaVjcMt",
  server: false

# Print only warnings and errors during test
config :logger, level: :warning

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime

# Enable helpful, but potentially expensive runtime checks
config :phoenix_live_view,
  enable_expensive_runtime_checks: true
