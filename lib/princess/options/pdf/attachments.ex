defmodule Princess.Options.PDF.Attachments do
  use Ecto.Schema
  alias Princess.Ecto.URL

  @primary_key false
  embedded_schema do
    field(:url, URL)
    field(:filename, :string)
    field(:description, :string)
  end
end
