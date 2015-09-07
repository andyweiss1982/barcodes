source "https://rubygems.org"

ruby "2.2.2"

gem "bourbon", "~> 4.2.0"
gem "flutie"
gem "jquery-rails"
gem "neat", "~> 1.7.0"
gem "normalize-rails", "~> 3.0.0"
gem "pg"
gem "puma"
gem "rails", "~> 4.2.0"
gem "refills"
gem "sass-rails", "~> 5.0"
gem "simple_form"
gem "title"
gem "uglifier"
gem 'aws-sdk', '< 2.0'
gem 'paperclip' #added JP
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
