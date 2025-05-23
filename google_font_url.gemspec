# frozen_string_literal: true

require_relative "lib/google_font_url/version"
require_relative "lib/google_font_url/generator"

Gem::Specification.new do |spec|
  spec.name          = "google_font_url"
  spec.version       = GoogleFontUrl::VERSION
  spec.license = "MIT"
  spec.authors       = ["mrmalvi"]
  spec.email         = ["malviyak00@gmail.com"]
  spec.summary       = "A gem to generate Google Fonts CSS stylelink URLs dynamically and font-face urls." # Short summary
  spec.description = "This gem provides a simple way to generate Google Fonts URLs with custom font names, weights, and variants. It supports embedding fonts into your web projects effortlessly by generating URLs or complete CSS links, ensuring compatibility with all font styles and weights available in the Google Fonts library."
  spec.homepage      = "https://github.com/mrmalvi/google_font_url"
  spec.required_ruby_version = ">= 3.0.0"

  # Add metadata for RubyGems
  spec.metadata["allowed_push_host"] = "https://rubygems.org"
  spec.metadata["homepage_uri"]      = spec.homepage
  spec.metadata["source_code_uri"]   = "https://github.com/mrmalvi/google_font_url"
  spec.metadata["changelog_uri"]     = "https://github.com/mrmalvi/google_font_url/blob/main/CHANGELOG.md"
  spec.add_development_dependency "rspec", "~> 3.11"
  spec.add_development_dependency "rubocop", "~> 1.52"
  spec.add_development_dependency "byebug", "~> 11.0"

  # Add dependencies
  spec.add_dependency "httparty", "~> 0.18"

  # Specify which files should be added to the gem
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |file|
      file.start_with?("test/", "spec/", ".git", "Gemfile") || file.end_with?(".gem")
    end
  end

  # Executables and paths
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment and adjust if you want to add additional runtime dependencies
  # spec.add_dependency "example-gem", "~> 1.0"
end
