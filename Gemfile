source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'

gem "bootsnap", ">= 1.1.0", require: false
gem "coffee-rails", "~> 4.2"
gem "fast_jsonapi"
gem "grape"
gem "grape_fast_jsonapi"
gem "jbuilder", "~> 2.5"
gem "nokogiri"
gem "oj"
gem "pg"
gem "puma", "~> 3.11"
gem "rails", "~> 5.2.0"
gem "sass-rails", "~> 5.0"
gem "turbolinks", "~> 5"
gem "uglifier", ">= 1.3.0"
gem 'versionist'
gem 'rack-attack'
gem 'nokogiri'
gem 'rails_param'
gem 'active_model_serializers'


group :development, :test do
  gem "pry-rails"
  gem "rspec-rails", "~> 3.8"
end

group :development do
  gem "listen", ">= 3.0.5", "< 3.2"
  gem "rubocop", require: false
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
  gem "web-console", ">= 3.3.0"
end

group :test do
  gem "database_cleaner"
  gem "factory_bot_rails"
  gem "fuubar"
  gem "shoulda-matchers", git: "git@github.com:thoughtbot/shoulda-matchers.git"
  gem "vcr"
  gem "webmock"

end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
