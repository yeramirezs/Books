source 'https://rubygems.org'

gem 'rails', '3.2.1'

group :development do
	gem 'sqlite3', '1.3.5'
	gem "will_paginate", "~> 3.0.4"
end

group :development, :test do
  gem "rspec-rails", ">= 2.0.1"
  gem 'cucumber-rails'
  gem 'database_cleaner'
end
# Gems used only for assets and not required
# in production environments by default.
group :assets do
	gem 'sass-rails', '3.2.4'
	gem 'coffee-rails', '3.2.2'
	gem 'uglifier', '1.2.3'
end

gem 'jquery-rails'

group :production do
	gem 'pg', '0.12.2'
end