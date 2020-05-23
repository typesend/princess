defmodule Princess.Options.PDF do
  use Ecto.Schema
  alias Princess.Ecto.URL

  embedded_schema do
    # auto, use_true_black, use_rich_black
    field(:color_options, :string)
    field(:embed_fonts, :boolean)
    field(:subset_fonts, :boolean)
    field(:artificial_fonts, :boolean)
    field(:force_identity_encoding, :boolean)
    field(:compress, :boolean)
    embeds_one(:encrypt, Encryption)
    field(:pdf_profile, :string)
    field(:pdf_output_intent, URL)
    field(:fallback_cmyk_profile, URL)
    # none, full
    field(:color_conversion, :string)
    field(:pdf_lang, :string)
    field(:pdf_xmp, URL)
    # auto, true, false
    field(:tagged_pdf, :string)
    embeds_many(:attach, Attachments)
  end
end
