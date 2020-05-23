defmodule Princess.Options.Input do
  use Ecto.Schema

  embedded_schema do
    field(:src, {:array, :string})
    field(:type, :string)
    field(:base, :string)
    field(:media, :string)
    field(:styles, {:array, :string})
    field(:scripts, {:array, :string})
    field(:default_style, :boolean)
    field(:author_style, :boolean)
    field(:javascript, :boolean)
    field(:xinclude, :boolean)
    field(:xml_external_entities, :boolean)
  end
end
