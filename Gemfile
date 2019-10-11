source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

# Rails and database
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 3.7'
gem 'rails', '~> 5.1'

# API
gem 'jsonapi-authorization', '~> 3.0.1'
gem 'jsonapi-resources', '~> 0.9.10'
gem 'knock'
gem 'rack-cors'

# Slug & Translation
gem 'friendly_id', '~> 5.1.0'
gem 'friendly_id-mobility', '~> 0.5.3'
gem 'mobility', '~> 0.8.4'

# Misc
gem 'rubocop', require: false
gem 'sitemap_generator'
gem 'validate_url'
gem 'whenever', require: false

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen',  '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
