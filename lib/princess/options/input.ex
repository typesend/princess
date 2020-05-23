defmodule Princess.Options.Input do
  use Ecto.Schema

  embedded_schema do
    field(:src, {:array, :string})
    field(:type, :string)
    field(:base, :string)
    field(:media, :string)
    field(:styles, {:array, :string})
    field(:scripts, {:array, :string})
    field(:"default-style", :boolean)
    field(:"author-style", :boolean)
    field(:javascript, :boolean)
    field(:xinclude, :boolean)
    field(:"xml-external-entities", :boolean)
  end
end
