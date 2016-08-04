source 'https://rubygems.org'


gem 'rails', '4.2.5'

gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0', group: :doc


#MVC
gem 'angularjs-rails'
# Authentication
gem 'devise'
# Authorization
gem 'cancancan'
#Pagination
gem 'will_paginate', '~> 3.1.0'
# Payment Options
gem 'stripe'

#Webserver
gem 'puma'
#caching
gem 'dalli'

#redis
gem 'redis-rails'

#performance monitoring
gem 'newrelic_rpm'

gem 'connection_pool'

#Security
gem "brakeman", :require => false

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  gem 'sqlite3'
  gem 'rspec-rails', '~> 3.4'
  gem 'factory_girl_rails', '~> 4.0'
  gem 'guard'
  gem 'guard-rspec', require: false
  gem 'spork-rails'
  gem 'guard-spork'
end

group :production do
  gem 'pg'
  gem 'rails_12factor'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end
