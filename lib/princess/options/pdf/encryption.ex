defmodule Princess.Options.PDF.Encryption do
  use Ecto.Schema

  embedded_schema do
    # 40, 128
    field(:"key-bits", :integer)
    field(:"user-password", :string)
    field(:"owner-password", :string)
    field(:"disallow-print", :boolean)
    field(:"disallow-modify", :boolean)
    field(:"disallow-copy", :boolean)
    field(:"disallow-annotate", :boolean)
  end
end
