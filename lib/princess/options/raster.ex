defmodule Princess.Options.Raster do
  use Ecto.Schema

  @primary_key false
  embedded_schema do
    field(:dpi, :integer)
    # white, transparent
    field(:background, :string)
  end
end
