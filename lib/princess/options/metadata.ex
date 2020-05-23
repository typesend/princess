defmodule Princess.Options.Metadata do
  use Ecto.Schema

  embedded_schema do
    field(:title, :string)
    field(:subject, :string)
    field(:author, :string)
    field(:keywords, :string)
    field(:creator, :string)
  end
end
