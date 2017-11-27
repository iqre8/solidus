# By placing all of Spree's shared dependencies in this file and then loading
# it for each component's Gemfile, we can be sure that we're only testing just
# the one component of Spree.
source 'https://rubygems.org'

platforms :ruby do
  gem 'mysql2'
  gem 'pg'
  gem 'sqlite3'
  gem 'fast_sqlite'
end

platforms :jruby do
  gem 'jruby-openssl'
  gem 'activerecord-jdbcsqlite3-adapter'
end

gem 'coffee-rails'
gem 'sass-rails'

group :test do
  gem 'capybara', '~> 2.15'
  gem 'capybara-screenshot', '>= 1.0.18'
  gem 'database_cleaner', '~> 1.3'
  gem 'factory_bot_rails', '~> 4.8'
  gem 'launchy'
  gem 'rspec-activemodel-mocks', '~>1.0.2'
  gem 'rspec-rails', '~> 3.6.0'
  gem 'simplecov'
  gem 'poltergeist', '~> 1.9'
  gem 'timecop'
  gem 'with_model'
  gem 'rspec_junit_formatter'
  gem 'rails-controller-testing'
  gem 'selenium-webdriver'
end

group :test, :development do
  gem 'rubocop'
  gem 'pry'
end

custom_gemfile = File.expand_path("../Gemfile-custom", __FILE__)
eval File.read(custom_gemfile) if File.exist?(custom_gemfile)
