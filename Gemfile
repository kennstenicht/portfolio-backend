# frozen_string_literal: true

source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

# Rails and database
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 3.12'
gem 'rails', '~> 5.2.3'

# API
gem 'jsonapi-authorization', '~> 3.0.1'
gem 'jsonapi-resources', '~> 0.9.10'
gem 'knock'
gem 'rack-cors'

# Slug & Translation
gem 'friendly_id', '~> 5.1.0'
gem 'friendly_id-mobility', '~> 0.5.3'
gem 'mobility', '~> 0.8.4'

# Cronjobs
gem 'whenever', require: false

# Sitemap
gem 'sitemap_generator'

# Validation
gem 'validate_url'

# Caching
gem 'bootsnap', '>= 1.1.0', require: false

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]

  # Code Analyzer
  gem 'rubocop', require: false
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
