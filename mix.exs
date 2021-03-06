defmodule DeathStar.MixProject do
  use Mix.Project

  def project do
    [
      app: :death_star,
      version: "0.1.0",
      elixir: "~> 1.5",
      test_coverage: [tool: ExCoveralls],
      preferred_cli_env: [
         coveralls: :test, 
         "coveralls.detail": :test, 
         "coveralls.post": :test, 
         "coveralls.html": :test
         ],
      elixirc_paths: elixirc_paths(Mix.env()),
      compilers: [:phoenix, :gettext] ++ Mix.compilers(),
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Configuration for the OTP application.
  #
  # Type `mix help compile.app` for more information.
  def application do
    [
      extra_applications: [
        :logger, 
        :runtime_tools
      ],
      mod: {DeathStar.Application, []}
    ]
  end

  # Specifies which paths to compile per environment.
  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_), do: ["lib"]

  # Specifies your project dependencies.
  #
  # Type `mix help deps` for examples and options.
  defp deps do
    [
      {:excoveralls, "~> 0.10", only: :test},
      {:phoenix, "~> 1.4.11"},
      {:phoenix_pubsub, "~> 1.1"},
      {:gettext, "~> 0.11"},
      {:httpoison, "~> 1.6"},
      {:jason, "~> 1.0"},
      {:plug_cowboy, "~> 2.0"}
    ]
  end
end
