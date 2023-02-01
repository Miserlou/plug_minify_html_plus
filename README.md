# plug_minify_html_plus

**A Plug that minifies HTML response body**

This is a fork of [s0kil/plug_minify_html](https://github.com/s0kil/plug_minify_html), which appears abandonded at time of writing, with some enhancements, specifically removing comments.

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `plug_minify_html_plus` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:plug_minify_html, "~> 0.2.0"}
  ]
end
```

## Usage

```elixir
# Simple
plug PlugMinifyHtml


# Browser Pipeline
pipeline :browser do
  plug :accepts, ["html"]
  plug :fetch_session
  plug :fetch_flash
  plug :protect_from_forgery
  plug :put_secure_browser_headers
  plug PlugMinifyHtml
end
```

### Resurrection Of [minify_response](https://github.com/gravityblast/minify_response)
