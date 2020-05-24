defmodule Princess.Job do
  use Ecto.Schema
  import Ecto.Changeset
  alias Princess.Ecto.URL

  # @derive {Jason.Encoder, only: [:input, :pdf, :metadata, :raster, :job_resource_count]}
  @primary_key false
  embedded_schema do
    # inputs
    field :artificial_fonts, :boolean
    field :attach, {:array, Princess.Job.Attachment}, default: []
    field :author, :string
    field :author_style, :boolean
    field :background, :string
    field :base, :string
    field :color_conversion, :boolean
    field :color_options, :string
    field :compress, :boolean
    field :creator, :string
    field :default_style, :boolean
    field :dpi, :integer
    field :embed_fonts, :boolean
    field :key_bits, :integer
    field :user_password, :string
    field :owner_password, :string
    field :disallow_print, :boolean
    field :disallow_modify, :boolean
    field :disallow_copy, :boolean
    field :disallow_annotate, :boolean
    field :fallback_cmyk_profile, URL
    field :force_identity_encoding, :boolean
    field :javascript, :boolean
    field :keywords, :string
    field :media, :string
    field :pdf_lang, :string
    field :pdf_output_intent, URL
    field :pdf_profile, :string
    field :pdf_xmp, URL
    field :script, {:array, URL}, default: []
    field :src, {:array, :any}, default: []
    field :style, {:array, URL}, default: []
    field :subject, :string
    field :subset_fonts, :boolean
    field :tagged_pdf, :string
    field :title, :string
    field :type, :string
    field :xinclude, :boolean
    field :xml_external_entities, :boolean
    # input chunks
    field :resource, {:array, Princess.Job.Resource}, default: []
    # progress and outputs
    field :id, Ecto.UUID, default: Ecto.UUID.generate()
    field :created_at, :naive_datetime_usec
    field :started_at, :naive_datetime_usec
    field :completed_at, :naive_datetime_usec
    field :progress, :integer
    field :output, :binary
  end

  def new(job, instructions \\ []) do
    job
    |> change(Enum.map(instructions, &apply_instruction/1))

    # |> validate_inclusion(:color_options, ~w[auto use-true-black use-rich-black])
    # |> validate_inclusion(:key_bits, [40, 128])
    # |> validate_inclusion(:color_conversion, ~w[none full])
    # |> validate_inclusion(:tagged_pdf, ["auto", true, false])
    # |> validate_inclusion(:background, ~w[white transparent])
    # |> validate_length(:src, min: 1)
  end

  def apply_instruction({instr, value}) when is_atom(instr) do
    field = instr
    field_type = __schema__(:type, instr)
    IO.puts("APPLYING INSTRUCTION")
    IO.inspect({field, field_type, value})
    IO.puts("")
  end

  # artificial_fonts
  # attach
  # author
  # author_style
  # background
  # base
  # color_conversion
  # color_options
  # compress
  # creator
  # default_style
  # dpi
  # embed_fonts
  # key_bits
  # user_password
  # owner_password
  # disallow_print
  # disallow_modify
  # disallow_copy
  # disallow_annotate
  # fallback_cmyk_profile
  # force_identity_encoding
  # javascript
  # keywords
  # media
  # pdf_lang
  # pdf_output_intent
  # pdf_profile
  # pdf_xmp
  # scripts
  # src
  # styles
  # subject
  # subset_fonts
  # tagged_pdf
  # title
  # type
  # xinclude
  # xml_external_entities
  # resources

  defmodule Resource do
    use Ecto.Schema
    @primary_key false
    embedded_schema do
      field(:name, :string)
      field(:contents, :string)
    end
  end

  defmodule Attachment do
    use Ecto.Schema
    @primary_key false
    embedded_schema do
      field(:url, URL)
      field(:filename, :string)
      field(:description, :string)
    end
  end
end
