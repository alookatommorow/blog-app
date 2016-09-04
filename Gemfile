source 'https://rubygems.org'
ruby "2.2.3"
gem 'rails', '4.2.5.1'

gem 'bcrypt'
gem 'jquery-rails'
gem 'pg'
gem 'sass-rails'
gem 'turbolinks'
gem 'uglifier', '>= 1.3.0'

group :assets do
  gem "coffee-rails"
end

group :development do
  gem "bullet"
  gem "spring-commands-rspec"
  gem "quiet_assets"
  gem "web-console", "~> 3.1.1"
end

group :development, :production do
  gem "forgery", "0.6.0"
end

group :development, :test do
  gem "dotenv-rails"
  gem "launchy"
  gem "pry-rails"
  gem "pry-byebug"
  gem "rspec-rails"
end

group :production do
  gem "rails_12factor"
end

group :test do
  gem "capybara"
  gem "capybara-webkit"
  gem "factory_girl_rails"
  gem "database_cleaner"
  gem "rake"
  gem "webmock"
end

