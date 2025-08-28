source "https://rubygems.org"

ruby "3.3.0"

gem "rails", "~> 7.1.5", ">= 7.1.5.1"

gem "sprockets-rails"
gem "sassc"

group :development, :test do
  #gem "sqlite3", "~> 1.4"
  gem 'pg', '~> 1.2'
  gem "debug", platforms: %i[ mri windows ]
  gem "font-awesome-rails"
end

group :production do
  gem "pg", "~> 1.2"
end

gem "puma", ">= 5.0"

gem "importmap-rails", "~> 2.1.0"

gem "turbo-rails"

gem "stimulus-rails"

gem "jbuilder"

# gem "redis", ">= 4.0.1"

# gem "kredis"

# gem "bcrypt", "~> 3.1.7"

gem "tzinfo-data", platforms: %i[ windows jruby ]

gem "bootsnap", require: false

# gem "image_processing", "~> 1.2"

group :development do
  gem "web-console"
  # gem "rack-mini-profiler"
  # gem "spring"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
end

gem 'sitemap_generator'

gem 'devise'
