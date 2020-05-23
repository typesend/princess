defmodule Princess.Job do
  use Ecto.Schema
  alias Princess.Options.{Input, PDF, Metadata, Raster}

  embedded_schema do
    embeds_one(:input, Input)
    embeds_one(:pdf, PDF)
    embeds_one(:metadata, Metadata)
    embeds_one(:raster, Raster)
    field(:"job-resource-count", :integer, default: 0)
  end
end
