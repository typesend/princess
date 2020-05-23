defmodule Princess.Options.PDF.Encryption do
  use Ecto.Schema

  @primary_key false
  embedded_schema do
    # 40, 128
    field(:key_bits, :integer)
    field(:user_password, :string)
    field(:owner_password, :string)
    field(:disallow_print, :boolean)
    field(:disallow_modify, :boolean)
    field(:disallow_copy, :boolean)
    field(:disallow_annotate, :boolean)
  end
end
