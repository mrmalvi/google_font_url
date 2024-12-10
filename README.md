# GoogleFontUrl

TODO: Delete this and the text below, and describe your gem

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/google_font_url`. To experiment with that code, run `bin/console` for an interactive prompt.

## Installation

`Use in class: require 'google_font_url/generator'` .

Install the gem and add to the application's Gemfile by executing:

```bash
gem 'google_font_url'
```

If bundler is not being used to manage dependencies, install the gem by executing:

```bash
GoogleFontUrl::Generator.generate
[["ABeeZee", "https://fonts.googleapis.com/css2?family=ABeeZee:ital,wght@0,400;1,400&display=swap"],
 ["ADLaM Display", "https://fonts.googleapis.com/css2?family=ADLaM+Display:wght@400&display=swap"],.....
```
```bash
GoogleFontUrl::Generator.all
[{"family"=>"ABeeZee",
  "variants"=>["regular", "italic"],
  "subsets"=>["latin", "latin-ext"],
  "version"=>"v22",
  "lastModified"=>"2024-09-04",
  "files"=>{"regular"=>"https://fonts.gstatic.com/s/abeezee/v22/esDR31xSG-6AGleN6tKukbcHCpE.ttf", "italic"=>"https://fonts.gstatic.com/s/abeezee/v22/esDT31xSG-6AGleN2tCklZUCGpG-GQ.ttf"},
  "category"=>"sans-serif",
  "kind"=>"webfonts#webfont",
  "menu"=>"https://fonts.gstatic.com/s/abeezee/v22/esDR31xSG-6AGleN2tOklQ.ttf",
  "css_style_link"=>"https://fonts.googleapis.com/css2?family=ABeeZee:ital,wght@0,400;1,400&display=swap"},.....
```

## Usage

TODO: Write usage instructions here

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/google_font_url.
