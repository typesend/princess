defmodule Princess.Job do
  use Ecto.Schema
  alias Princess.Options.{Input, PDF, Metadata, Raster}
  alias Princess.Resource

  embedded_schema do
    # inputs
    embeds_one(:input, Input)
    embeds_one(:pdf, PDF)
    embeds_one(:metadata, Metadata)
    embeds_one(:raster, Raster)
    field(:job_resource_count, :integer, default: 0)
    embeds_many(:resources, Resource)
    # progress and outputs
    field(:created_at, :naive_datetime_usec)
    field(:started_at, :naive_datetime_usec)
    field(:completed_at, :naive_datetime_usec)
    field(:progress, :integer)
  end
end
