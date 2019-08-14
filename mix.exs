defmodule Decanter.MixProject do
  use Mix.Project

  @version "0.0.1"
  def project do
    [
      app: :decanter,
      version: @version,
      elixir: "~> 1.9",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      description: "A library for measure and export operations (like Flow)",
      package: package()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {Decanter.Application, []}
    ]
  end

  defp package do
    [
      maintainers: ["Kenton Wang"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/smartepsh/decanter"}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ex_doc, "~> 0.19", only: :dev, runtime: false}
    ]
  end
end
