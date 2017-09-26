source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


gem 'rails', '~> 5.1.4'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.7'

gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'jquery-rails'
gem 'bootstrap-sass'
gem 'sidekiq'
gem 'annotate'
gem 'activeadmin'
gem 'ransack'
gem 'dotenv'
gem 'geocoder'
gem 'paranoia'
gem 'devise'
gem 'gmaps4rails'
gem 'redis'
gem 'hiredis'
gem 'carrierwave'
gem 'mini_magick'
gem 'rest-client'
group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end


group :development do
  gem 'binding_of_caller'
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'better_errors'
  gem 'capistrano', '~> 3.7', '>= 3.7.1', require: false
  gem 'capistrano-rails', '~> 1.2', require: false
  gem 'capistrano-passenger', '~> 0.2.0', require: false
  gem 'capistrano-rvm', require: false
end

group :production do
  gem 'rails_12factor'
  
end
