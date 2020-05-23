defmodule Princess.Job do
  use Ecto.Schema
  alias Princess.Options.{Input, PDF, Metadata, Raster}
  alias Princess.Resource

  embedded_schema do
    embeds_one(:input, Input)
    embeds_one(:pdf, PDF)
    embeds_one(:metadata, Metadata)
    embeds_one(:raster, Raster)
    field(:job_resource_count, :integer, default: 0)
    field(:created_at)
    embeds_many(:resources, Resource)
  end
end
