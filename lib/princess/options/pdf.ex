defmodule Princess.Options.PDF do
  use Ecto.Schema
  alias Princess.Ecto.URL

  embedded_schema do
    # auto, use-true-black, use-rich-black
    field(:"color-options", :string)
    field(:"embed-fonts", :boolean)
    field(:"subset-fonts", :boolean)
    field(:"artificial-fonts", :boolean)
    field(:"force-identity-encoding", :boolean)
    field(:compress, :boolean)
    embeds_one(:encrypt, Encryption)
    field(:"pdf-profile", :string)
    field(:"pdf-output-intent", URL)
    field(:"fallback-cmyk-profile", URL)
    # none, full
    field(:"color-conversion", :string)
    field(:"pdf-lang", :string)
    field(:"pdf-xmp", URL)
    # auto, true, false
    field(:"tagged-pdf", :string)
    embeds_many(:attach, Attachments)
  end
end
