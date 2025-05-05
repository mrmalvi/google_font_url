require_relative 'utils'

module GoogleFontUrl
  class Generator
    def self.generate
      GoogleFontUrl::Utils.read_fonts.map { |font_data| [font_data["family"], font_data["css_url"]] }
    end

    def self.all
      GoogleFontUrl::Utils.read_fonts
    end
  end
end
