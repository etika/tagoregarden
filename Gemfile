source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.4'
# Use sqlite3 as the database for Active Record
# gem 'sqlite3'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby
gem 'ads-rails'

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc
gem 'rails_12factor', group: :production
gem 'gmaps4rails'
gem 'bootstrap-sass', '~> 3.3.1'
gem 'jquery-countdown-rails'
gem 'meta-tags'
gem 'devise'
gem 'will_paginate'
gem 'omniauth'
gem 'omniauth-facebook'
gem "omniauth-google-oauth2"
gem "rails_best_practices"
gem "paperclip", "~> 5.0.0"
gem 'acts-as-taggable-on', '~> 3.4'
gem 'rails4-autocomplete'
gem 'thredded', '~> 0.6.1'
gem 'aws-sdk', '~> 2.3'
gem 'cowsay'
# gem 'metrical', :require => false
# gem "simplecov",'~>0.9.11' ,:require => false, :group => :test
gem 'social-share-button'
gem 'contact_us', '~> 1.0.1'
gem 'simple_form'
gem "figaro"
gem 'friendly_id'
# gem 'forem', :github => "radar/forem", :branch => "rails4"
gem 'actionpack-page_caching'
gem 'elasticsearch-rails'
gem 'elasticsearch-model'
gem 'ckeditor', github: 'galetahub/ckeditor'
group :assets do
  gem 'jquery-ui-rails', :git => 'https://github.com/joliss/jquery-ui-rails'
end

# gem 'gmaps4rails'
# gem 'mapbox-rails'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  gem 'sqlite3'
  gem 'quiet_assets'
  gem 'rspec-rails', '~> 3.0.0'
  gem 'populator'
  gem 'faker'
  # gem "better_errors"
  # gem "binding_of_caller"
end
group :production do
  gem 'bonsai-elasticsearch-rails'
  gem 'pg'
end
group :test do
  gem 'factory_girl_rails'
  gem 'guard-rspec', require: false
  gem 'shoulda-matchers', '~> 3.1'
  gem 'simplecov', require: false
  gem 'database_cleaner'
  gem 'simplecov-rcov', :require => false
  gem 'capybara'
  gem 'selenium-webdriver'
end
group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

