source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.2'
gem 'puma', '~> 3.12'
gem 'mysql2'

gem 'dalli'
gem 'devise', '~> 4.6'
gem 'omniauth-github'
gem 'kaminari'
gem 'friendly_id', '~> 5.2'
gem 'mandate'

gem 'haml-rails'
gem 'jquery-rails'
gem 'coffee-rails', '~> 4.2'
gem 'sassc-rails'
gem 'uglifier', '>= 1.3.0'
gem 'premailer-rails'

gem 'commonmarker', require: false
gem 'rugged'
gem 'loofah'
gem 'lmdb'
gem 'octokit'
gem "bugsnag"
gem 'image_processing', '~> 1.2'
gem 'rest-client'
gem 'rubyzip', require: false

gem 'propono'
gem 'aws-sdk-s3'

gem 'delayed_job_active_record'
gem 'daemons'

gem 'bootsnap', '>= 1.1.0', require: false

gem 'lograge'

group :production do
  gem "skylight"
end

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'capybara', '~> 3.0'
  gem 'selenium-webdriver'
  gem 'factory_bot_rails'
  gem 'bullet'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'capistrano', '~> 3.6'
  gem 'capistrano-rails', '~> 1.1'
  gem 'capistrano-rvm'
  gem 'capistrano-yarn'
  gem 'letter_opener'
end

group :test do
  gem 'simplecov', require: false
  gem 'minitest', '~> 5.10', '!= 5.10.2'
  gem 'minitest-stub-const'
  gem 'mocha'
  gem 'rails-controller-testing'
  gem 'timecop'
  gem 'chromedriver-helper'
  gem 'webmock'
end

group :development, :production do
  gem 'capistrano-checks'
end
