defmodule MarketTerminal.MixProject do
  use Mix.Project

  def project do
    [
      app: :market_terminal,
      version: "0.1.0",
      elixir: "~> 1.9",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger, :ssl, :inets]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [{:jason, "~> 1.1"}]
  end
end
