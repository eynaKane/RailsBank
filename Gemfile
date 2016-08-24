source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.5.1'
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
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

gem 'money'


group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  gem 'cucumber-rails', :require => false
  # database_cleaner is not required, but highly recommended
  gem 'database_cleaner'
  gem "factory_girl_rails", "~> 4.0"

  # WebDriver is a tool for writing automated tests of websites. It aims to mimic the behaviour of a real user [...]
  gem 'selenium-webdriver', '~> 2.42.0'

  # Easy installation and use of chromedriver, the Chromium project's selenium webdriver adapter
  gem 'chromedriver-helper', '~> 1.0.0'

  # Poltergeist is a driver for Capybara that allows you to run your tests on a headless WebKit [...]
  gem 'poltergeist', '~> 1.6.0'

  # Auto-install phantomjs on demand for current platform. Comes with poltergeist integration
  gem 'phantomjs', '~> 1.9.8.0', require: 'phantomjs/poltergeist'

  # When a Cucumber step fails, it is useful to create a screenshot image and HTML file of the current page
  gem 'capybara-screenshot', '~> 1.0.9'

  # Rack middleware that provides access to rack.session environment
  gem 'rack_session_access', '~> 0.1.1'

  # SitePrism gives you a simple, clean and semantic DSL for describing your site using the Page Object Model
  gem 'site_prism', '~> 2.7'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

