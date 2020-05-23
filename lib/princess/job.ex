defmodule Princess.Job do
  use Ecto.Schema
  import Ecto.Changeset
  alias Princess.Options.{Input, PDF, Metadata, Raster}
  alias Princess.Resource

  @derive {Jason.Encoder, only: [:input, :pdf, :metadata, :raster, :job_resource_count]}
  @primary_key false
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
    field(:output, :binary)
  end

  def changeset(job, params \\ []) do
    job
  end

  def instructions do
    Input.__schema__(:fields) ++
      PDF.__schema__(:fields) ++ Metadata.__schema__(:fields) ++ Raster.__schema__(:fields)
  end

  def apply_changes do
  end

  def known_keys do
    Input.__schema__(:source) ++
      PDF.__schema__(:source) ++
      Metadata.__schema__(:source) ++
      Raster.__schema__(:source)
  end

  ## Operations

  def handle_instruction({:src, _url}) do
  end

  def handle_instruction({:type, _type}) do
  end

  def handle_instruction({:base, _it}) do
  end

  def handle_instruction({:media, _it}) do
  end

  def handle_instruction({:style, _it}) do
  end

  def handle_instruction({:style, _it}) do
  end
end
