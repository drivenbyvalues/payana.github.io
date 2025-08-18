# frozen_string_literal: true

source "https://rubygems.org"

gemspec

# Jekyll version
gem "jekyll", "~> 4.3.3"

group :jekyll_plugins do
  gem "jekyll-seo-tag", "~> 2.8.0"
  gem "jekyll-sitemap", "~> 1.4.0"
  gem "jekyll-feed", "~> 0.17.0"
  gem "jekyll-optional-front-matter", "~> 0.3.2"
end

# Windows and JRuby does not include zoneinfo files, so bundle the tzinfo-data gem
# and associated library.
install_if -> { RUBY_PLATFORM =~ %r!mingw|mswin|java! } do
  gem "tzinfo", ">= 1.2.0"
  gem "tzinfo-data"
end

# Performance-booster for watching directories on Windows
gem "wdm", "~> 0.1.0", :install_if => Gem.win_platform?
