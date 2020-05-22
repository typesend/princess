defmodule Princess.MixProject do
  use Mix.Project

  def project do
    [
      app: :princess,
      version: "0.1.0",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      description: description(),
      package: package(),
      deps: deps(),
      name: "Princess",
      source_url: "https://github.com/typesend/princess",
      homepage_url: "https://github.com/typesend/princess",
      docs: docs()
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
      {:ex_doc, "~> 0.22", only: :dev, runtime: false}
    ]
  end

  defp description() do
    "Generate print-ready PDF files using HTML, JavaScript, and CSS. Heavy lifting is performed by PrinceXML."
  end

  defp package() do
    [
      files: ~w(lib priv .formatter.exs mix.exs README* LICENSE*),
      licenses: ["MIT"],
      links: %{
        "GitHub" => "https://github.com/typesend/princess",
        "PrinceXML" => "https://princexml.com"
      }
    ]
  end

  defp docs() do
    [
      main: "Princess",
      logo: "priv/princess.png",
      extras: ["README.md"]
    ]
  end
end
