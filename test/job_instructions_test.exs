defmodule Princess.Job.InstructionsTest do
  alias Princess.Job
  use ExUnit.Case
  import StreamData
  use ExUnitProperties

  # property "valid job specifications" do
  #   check all(instructions <- list_of(generated_instructions()) do
  #     IO.inspect(jobs)
  #     assert true
  #   end
  # end

  property "valid instructions" do
    check all(instruction <- {}) do
      IO.inspect(instruction)
      assert true
    end
  end

  # def generated_jobs do
  #   [
  #     artificial_fonts: artificial_fonts,
  #     attach: attach,
  #     author: author,
  #     author_style: author_style,
  #     background: background,
  #     base: base,
  #     color_conversion: color_conversion,
  #     color_options: color_options,
  #     compress: compress,
  #     creator: creator,
  #     default_style: default_style,
  #     dpi: dpi,
  #     embed_fonts: embed_fonts,
  #     key_bits: key_bits,
  #     user_password: user_password,
  #     owner_password: owner_password,
  #     disallow_print: disallow_print,
  #     disallow_modify: disallow_modify,
  #     disallow_copy: disallow_copy,
  #     disallow_annotate: disallow_annotate,
  #     fallback_cmyk_profile: fallback_cmyk_profile,
  #     force_identity_encoding: force_identity_encoding,
  #     javascript: javascript,
  #     keywords: keywords,
  #     media: media,
  #     pdf_lang: pdf_lang,
  #     pdf_output_intent: pdf_output_intent,
  #     pdf_profile: pdf_profile,
  #     pdf_xmp: pdf_xmp,
  #     script: scripts,
  #     src: src,
  #     style: styles,
  #     subject: subject,
  #     subset_fonts: subset_fonts,
  #     tagged_pdf: tagged_pdf,
  #     title: title,
  #     type: type,
  #     xinclude: xinclude,
  #     xml_external_entities: xml_external_entities,
  #     resource: resources
  #   ]
  # end

  # def job_generator do
  #   %Job{
  #   }
  # end

  # test "valid job options" do
  #   gen all(
  #         artificial_fonts <- StreamData.binary(),
  #         attach <- StreamData.binary(),
  #         author <- StreamData.binary(),
  #         author_style <- StreamData.binary(),
  #         background <- StreamData.binary(),
  #         base <- StreamData.binary(),
  #         color_conversion <- StreamData.binary(),
  #         color_options <- StreamData.binary(),
  #         compress <- StreamData.binary(),
  #         creator <- StreamData.binary(),
  #         default_style <- StreamData.binary(),
  #         dpi <- StreamData.binary(),
  #         embed_fonts <- StreamData.binary(),
  #         key_bits <- StreamData.binary(),
  #         user_password <- StreamData.binary(),
  #         owner_password <- StreamData.binary(),
  #         disallow_print <- StreamData.binary(),
  #         disallow_modify <- StreamData.binary(),
  #         disallow_copy <- StreamData.binary(),
  #         disallow_annotate <- StreamData.binary(),
  #         fallback_cmyk_profile <- StreamData.binary(),
  #         force_identity_encoding <- StreamData.binary(),
  #         javascript <- StreamData.binary(),
  #         keywords <- StreamData.binary(),
  #         media <- StreamData.binary(),
  #         pdf_lang <- StreamData.binary(),
  #         pdf_output_intent <- StreamData.binary(),
  #         pdf_profile <- StreamData.binary(),
  #         pdf_xmp <- StreamData.binary(),
  #         script <- StreamData.binary(),
  #         src <- StreamData.binary(),
  #         style <- StreamData.binary(),
  #         subject <- StreamData.binary(),
  #         subset_fonts <- StreamData.binary(),
  #         tagged_pdf <- StreamData.binary(),
  #         title <- StreamData.binary(),
  #         type <- StreamData.binary(),
  #         xinclude <- StreamData.binary(),
  #         xml_external_entities <- StreamData.binary(),
  #         resource <- StreamData.binary()
  #       ) do
  #   end
  # end
end
