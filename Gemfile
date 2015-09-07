source "https://rubygems.org"

ruby "2.2.2"

gem "airbrake"
gem "autoprefixer-rails"
gem "bourbon", "~> 4.2.0"
gem "coffee-rails", "~> 4.1.0"
gem "delayed_job_active_record"
gem "email_validator"
gem "flutie"
gem "high_voltage"
gem "i18n-tasks"
gem "jquery-rails"
gem "neat", "~> 1.7.0"
gem "newrelic_rpm", ">= 3.9.8"
gem "normalize-rails", "~> 3.0.0"
gem "pg"
gem "puma"
gem "rack-canonical-host"
gem "rails", "~> 4.2.0"
gem "recipient_interceptor"
gem "refills"
gem "sass-rails", "~> 5.0"
gem "simple_form"
gem "title"
gem "uglifier"
gem "browser" # added JP
gem "rails4-autocomplete" # added JP
gem "omniauth", "~> 1.2" # added JP
gem "omniauth-auth0", "~> 1.1" # added JP
gem "auth0" # added JP
gem "judge" # added JP
gem "judge-simple_form" # added JP
gem "pickadate-rails" # added AW
# gem "awesome_print" #moved from developement, test AW
gem "intercom-rails" # added JP
gem 'aws-sdk', '< 2.0'
gem 'paperclip' #added JP
gem 'prawn-rails' #added JP
gem 'sendgrid' #added JP
gem 'exception_handler' #added JP
gem 'devise' #added JP
gem "clearance" #added JP
gem "audited-activerecord", "~> 4.0" #added AW
gem "sidekiq" #added JP
gem "progress_job" #added JP
gem 'annotate', '~> 2.6.6' #added JP
gem 'rack-cors', :require => 'rack/cors' # Added JP
gem 'will_paginate', '~> 3.0.6' # Added JP
gem 'best_in_place' # Added JP
gem 'public_activity' # Added JP
gem "geocoder" # Added JP
gem "httparty"
gem "rturk"
gem "griddler"
gem "griddler-sendgrid"
gem "zbar", require: false #added AW
gem "barby"
gem 'rmagick'

group :development do
  gem "spring"
  gem "spring-commands-rspec"
  gem "web-console"
  gem "rack-mini-profiler" # added JP
  gem "bullet" # added JP
  gem "seed_dump" # added JP
  gem "quiet_assets" # added JP
  gem "letter_opener" # added JP
  gem 'better_errors' # added JP
  gem 'binding_of_caller' # added JP
  gem "rails-erd" #added JP
  gem "thin"
end

group :development, :test do
  gem "awesome_print"
  gem "bundler-audit", require: false
  gem "byebug"
  gem "dotenv-rails"
  gem "factory_girl_rails"
  gem "pry-rails"
  gem "rspec-rails", "~> 3.3.0"
end

group :test do
  gem "capybara-webkit", ">= 1.2.0"
  gem "database_cleaner"
  gem "formulaic"
  gem "launchy"
  gem "shoulda-matchers", require: false
  gem "simplecov", require: false
  gem "timecop"
  gem "webmock"
  gem 'pdf-inspector', :require => "pdf/inspector"
  gem "selenium-webdriver"
end

group :staging, :production do
  gem "rails_stdout_logging"
  gem "rails_12factor"  # added JP
  gem "rack-timeout"
end
