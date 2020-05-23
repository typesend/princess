defmodule Princess.Options.Input do
  use Ecto.Schema
  alias Princess.Ecto.URL

  @primary_key false
  embedded_schema do
    field(:src, {:array, URL})
    field(:type, :string)
    field(:base, :string)
    field(:media, :string)
    field(:styles, {:array, URL})
    field(:scripts, {:array, URL})
    field(:default_style, :boolean)
    field(:author_style, :boolean)
    field(:javascript, :boolean)
    field(:xinclude, :boolean)
    field(:xml_external_entities, :boolean)
  end
end
