defmodule MediaPlayer.MixProject do
  use Mix.Project

  def project do
    [
      app: :media_player,
      version: "0.1.0",
      elixir: "~> 1.17",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      mod: {MediaPlayer, []},
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:dotenv, "~> 3.0"},
      {:decimal, "~> 1.0"},
      {:xandra, "~> 0.14"},
      {:elixir_uuid, "~> 1.2"}
    ]
  end
end
