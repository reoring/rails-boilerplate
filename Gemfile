source 'https://rubygems.org'

ruby '2.3.1'

gem 'pg'

gem 'stylus'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.6'
# Use sqlite3 as the database for Active Record
gem 'sqlite3'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks', '~> 5.0'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

gem 'bootstrap-sass'
gem 'font-awesome-rails'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

gem 'devise'
gem 'devise_invitable'
gem 'devise-bootstrap-views'

gem 'cancancan'

gem 'dotenv-rails'

gem 'sidekiq'
gem 'sidekiq-unique-jobs'
gem 'sidekiq-failures'
gem 'sinatra', require: nil # For sidekiq Web UI
gem 'heroku-api'

# Use Puma as the app server
gem 'puma'

group :production, :staging do
  gem 'rails_12factor'
end

group :development, :test do
  gem 'pry-rails'
  gem 'pry-byebug'
  gem 'pry-doc'
  gem 'bullet'

  gem 'rspec'
  gem 'rspec-rails'
  gem 'factory_girl_rails', '~> 4.0'
  gem 'faker'

  gem 'rubocop', '0.35.1', require: false
  gem 'onkcop'
end

group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'letter_opener'
  gem 'xray-rails'
  gem 'quiet_assets'

  gem 'spring'
  gem 'spring-commands-rspec'

  gem 'annotate'
end
