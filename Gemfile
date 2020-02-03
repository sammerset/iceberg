# frozen_string_literal: true

source 'https://rubygems.org'
ruby File.read('.ruby-version').strip

git_source(:github) { |repo_name| "https://github.com/#{repo_name}" }

gem 'rake'

# Database persistence
gem 'mysql2'
gem 'rom'
gem 'rom-mapper'
gem 'rom-repository'
gem 'rom-sql'

# Application dependencies
gem 'dry-struct'
gem 'dry-system'
gem 'dry-transaction'
gem 'dry-types'
gem 'dry-validation'

# Third-party dependencies
gem 'dotenv'
gem 'hash_mapper'
gem 'i18n'

group :development, :test do
  gem 'database_cleaner'
  gem 'rubocop', require: false
  # Tools
  gem 'pry'
  gem 'pry-byebug'
end

group :test do
  gem 'rspec', '~> 3.7.0'
  gem 'simplecov', require: false
  gem 'vcr'
  gem 'webmock'
end
