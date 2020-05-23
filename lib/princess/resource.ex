defmodule Princess.Resource do
  use Ecto.Schema

  embedded_schema do
    field(:name, :string)
    field(:contents, :string)
  end
end
