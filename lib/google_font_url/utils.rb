# frozen_string_literal: true

require "yaml"

module GoogleFontUrl
  class Utils
    DATA_PATH = File.expand_path("../../../data/fonts_data.yml", __FILE__)

    def self.read_fonts
      unless File.exist?(DATA_PATH)
        raise "Data file not found: #{DATA_PATH}"
      end
      YAML.safe_load(File.read(DATA_PATH))
    end
  end
end
