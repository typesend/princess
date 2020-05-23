defmodule Princess.Resource do
  use Ecto.Schema

  @primary_key false
  embedded_schema do
    field(:name, :string)
    field(:contents, :string)
  end
end
