defmodule PlugMinifyHtml.MixProject do
  use Mix.Project

  def project do
    [
      app: :plug_minify_html_plus,
      version: "0.2.0",
      elixir: "~> 1.10",
      source_url: "https://github.com/Miserlou/plug_minify_html_plus",
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      description: description(),
      package: package(),
      deps: deps()
    ]
  end

  defp description do
    """
    A Plug that minifies HTML response body
    """
  end

  defp package do
    [
      files: ["lib", "mix.exs", "README.md"],
      maintainers: ["Rich Jones"],
      licenses: ["MIT"],
      links: %{
        "GitHub" => "https://github.com/Miserlou/plug_minify_html_plus"
      }
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:plug, "~> 1.9"},
      {:floki, "~> 0.26"},
      {:ex_doc, "~> 0.21", only: :dev, runtime: false}
    ]
  end
end
