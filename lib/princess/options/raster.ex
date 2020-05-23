defmodule Princess.Options.Raster do
  use Ecto.Schema

  embedded_schema do
    field(:dpi, :integer)
    # white, transparent
    field(:background, :string)
  end
end
