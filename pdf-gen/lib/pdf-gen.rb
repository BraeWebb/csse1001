# frozen_string_literal: true

require "jekyll"

module Jekyll
  class PDFGen
    class << self
      def generate(doc)
        outpath=doc.destination('/')
        dest=outpath.delete_suffix('.html')
        `pandoc \
        --css=style/main.css \
        --css=style/code.css \
        --pdf-engine=wkhtmltopdf \
        --pdf-engine-opt=--enable-local-file-access \
        #{outpath} \
        -o "#{dest}.pdf"`
      end
    end
  end
end

Jekyll::Hooks.register [:pages, :documents], :post_write do |doc|
  Jekyll::PDFGen.generate(doc)
end