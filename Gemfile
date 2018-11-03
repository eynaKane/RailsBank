source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails'
gem 'activemodel'
# Use sqlite3 as the database for Active Record
gem 'sqlite3'
# Use SCSS for stylesheets
gem 'sass-rails'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc'

# Use ActiveModel has_secure_password
gem 'bcrypt'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

gem 'money'
gem 'puma'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  gem 'cucumber-rails', :require => false
  # database_cleaner is not required, but highly recommended
  gem 'database_cleaner'
  gem "factory_bot"

  # WebDriver is a tool for writing automated tests of websites. It aims to mimic the behaviour of a real user [...]
  gem 'selenium-webdriver'

  # Easy installation and use of chromedriver, the Chromium project's selenium webdriver adapter
  gem 'chromedriver-helper'

  # Poltergeist is a driver for Capybara that allows you to run your tests on a headless WebKit [...]
  gem 'poltergeist'

  # Auto-install phantomjs on demand for current platform. Comes with poltergeist integration
  gem 'phantomjs'

  # When a Cucumber step fails, it is useful to create a screenshot image and HTML file of the current page
  gem 'capybara-screenshot'

  # Rack middleware that provides access to rack.session environment
  gem 'rack_session_access'

  # SitePrism gives you a simple, clean and semantic DSL for describing your site using the Page Object Model
  gem 'site_prism'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

