source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.0.0"

gem "rails",            "~> 7.0.2", ">= 7.0.2.3"
gem "puma",             "~> 5.0"
gem "sass-rails",       "6.0.0", require: false
gem "bootstrap-sass",   ">= 3.4"
gem "turbolinks",       "5.2.0"
gem "jbuilder",         "2.9.1"
gem "bootsnap",         ">= 1.4.4", require: false
gem "sprockets-rails"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]


group :development, :test do
  gem "sqlite3", "~> 1.4"
  # gem "pg"
  gem "byebug", platforms: %i[ mri mingw x64_mingw ]
end

group :development do
  gem "web-console",            "4.0.1"
  gem "listen",                 "3.7.1"
  gem "spring",                 "2.1.0"
  gem "spring-watcher-listen",  "2.0.1"
end

group :test do
  gem "capybara",                 "3.28.0"
  gem "selenium-webdriver",       "3.142.3"
  gem "webdrivers",               "4.1.2"
  gem "rails-controller-testing", "1.0.4"
  gem "minitest",                 "~> 5.1"
  gem "minitest-reporters",       "1.3.8"
  gem "guard",                    "2.15.0"
  gem "guard-minitest",           "2.4.6"
end


# group :production do
#   gem "pg", "1.3.4"
# end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]