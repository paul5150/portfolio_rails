Title: Portfolio

Author: Paul Morin

Description: An app that you can use to display your work to others.

Ruby Rails Version: 4.2.3

Database Creation:
  ActiveRecord
  Postgres - See Schema for migration details

System Dependencies:
  Ruby installed
  Rails 4.2.3
  Postgres/psql
  capybara
  rspec  

Gem File:

gem 'rails'
gem 'pg'
gem 'sass-rails', '>= 3.2'
gem 'uglifier'
gem 'coffee-rails'
gem 'jquery-rails'
gem 'turbolinks'
gem 'bootstrap-sass', '~> 3.3.5'

group :development do
gem 'byebug'
gem 'web-console'
gem 'spring'
gem 'quiet_assets'
end

group :development, :test do
gem 'rspec-rails'
gem 'launchy'
gem 'pry'
end

group :test do
gem 'shoulda-matchers'
gem 'capybara'
end
