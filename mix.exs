defmodule Issues.Mixfile do
  use Mix.Project

  def project do
    [
      app: :issues,
      escript: script_config(),
      version: "0.1.0",
      elixir: "~> 1.5",
      start_permanent: Mix.env == :prod,
      name: "Issues",
      source_url: "https://www.github.com/maxmaccari/issues",
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger, :httpoison]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      { :httpoison, "~> 0.9" },
      { :poison, "~> 2.2" },
      { :ex_doc, "~> 0.12" },
      { :earmark, "~> 1.0", override: true }
    ]
  end

  defp script_config do
    [ main_module: Issues.CLI ]
  end
end
