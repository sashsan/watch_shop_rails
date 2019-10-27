# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.3'

gem 'active_model_serializers'
gem 'activestorage', '~> 5.2'
gem 'ancestry'
gem 'bootstrap-sass', '~> 3.4.1'
gem 'breadcrumbs_on_rails'
gem 'coffee-rails', '~> 4.2'
gem 'devise'
gem 'doorkeeper'
gem 'faker', git: 'https://github.com/faker-ruby/faker.git', branch: 'master'
gem 'jbuilder'
gem 'jquery-rails'
gem 'meta-tags'
gem 'oj'
gem 'oj_mimic_json'
gem 'omniauth'
gem 'omniauth-facebook'
gem 'pq'
gem 'puma', '~> 3.11'
gem 'pundit'
gem 'rails', '~> 5.2.3'
gem 'sassc-rails', '>= 2.1.0'
gem 'simple_form'
gem 'turbolinks', '~> 5'
gem 'uglifier', '>= 1.3.0'

group :development, :test do
  gem 'database_cleaner'
  gem 'factory_bot'
  gem 'pg', '~> 1.1'
  gem 'pry'
  gem 'rails-controller-testing'
  gem 'rb-readline'
  gem 'rspec-json_expectations'
  gem 'rspec-rails'
end

group :development do
  gem 'listen'
  gem 'web-console', '>= 3.3.0'
end

group :test do
  gem 'capybara'
  gem 'db-query-matchers'
  gem 'json_spec'
  gem 'launchy'
  gem 'rubocop', require: false
  gem 'shoulda-matchers'
  gem 'webdrivers'
end

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
