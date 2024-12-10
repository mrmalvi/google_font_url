require "google_font_url/generator"
require "byebug"
require "google_font_url/utils"

RSpec.describe GoogleFontUrl::Generator do
  describe ".generate" do
    it "generate data" do
      font = GoogleFontUrl::Generator.generate.first

      expect(font).to eq(["ABeeZee", "https://fonts.googleapis.com/css2?family=ABeeZee:ital,wght@0,400;1,400&display=swap"])
    end
  end

  describe ".all" do
    it "generate all data" do
      font = GoogleFontUrl::Generator.all.first

      expect(font["family"]).to eq("ABeeZee")
      expect(font["variants"]).to eq(["regular", "italic"])
      expect(font["css_style_link"]).to eq("https://fonts.googleapis.com/css2?family=ABeeZee:ital,wght@0,400;1,400&display=swap")
    end
  end
end
