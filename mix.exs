defmodule PhoenixScss.MixProject do
  use Mix.Project

  def project do
    [
      app: :phoenix_scss,
      deps: deps(),
      elixir: "~> 1.13",
      preferred_cli_env: [espec: :test],
      start_permanent: Mix.env() == :prod,
      version: "0.1.0"
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:espec, "~> 1.8.3", only: :test}
    ]
  end
end
