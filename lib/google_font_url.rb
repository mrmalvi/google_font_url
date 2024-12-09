# frozen_string_literal: true

require_relative "google_font_url/version"
require "google_font_url"

module GoogleFontUrl
  class Error < StandardError; end

  class Generator
    def self.generate
      GoogleFontUrl::Utils.read_fonts.map{ |font_data| [font_data["family"], font_data["css_style_link"]] }
    end

    def self.all
      GoogleFontUrl::Utils.read_fonts
    end
  end
end
