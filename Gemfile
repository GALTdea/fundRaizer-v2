source 'https://rubygems.org'


git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

# gem 'dotenv-rails', groups: [:development, :test]
gem 'dotenv-rails', '~> 2.7', '>= 2.7.5'



# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.4'
# Use postgresql as the database for Active Record
gem 'pg', '~> 0.18'
# Use Puma as the app server
gem 'puma', '~> 4.3', '>= 4.3.1'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

#### Added Gems

# used to set enviroment variables


# gem 'bootstrap', '~> 4.0'
gem 'bootstrap', '~> 4.4', '>= 4.4.1'
gem 'jquery-rails', '~> 4.3', '>= 4.3.1'
gem 'popper_js', '~> 1.12', '>= 1.12.9'
gem 'sprockets-rails', '~> 3.2', '>= 3.2.1'
gem 'tether-rails', '~> 1.4'

gem 'devise', '~> 4.7', '>= 4.7.1'
# image loader and rezisors
gem 'carrierwave', '~> 1.2', '>= 1.2.2'
gem 'carrierwave-aws', '~> 1.3'
gem 'fog-aws', '~> 3.3'

# gem 'rmagick', '~> 2.16'

gem 'mini_magick', '~> 4.10', '>= 4.10.1'


gem 'will_paginate', '~> 3.1', '>= 3.1.6'
gem 'will_paginate-bootstrap4', '~> 0.2.2'
gem 'gritter', '~> 1.2'

gem 'administrate', '~> 0.10.0' 
# gem 'administrate', '~> 0.11.0'

gem 'friendly_id', '~> 5.3'
#facebook integration 

# gem 'omniauth-facebook', '~> 5.0'


# icons library
# gem 'octicons', '~> 3.0', '>= 3.0.1'

# access granting to admins
gem 'pundit', '~> 2.0', '>= 2.0.1'


gem 'social-share-button', '~> 1.2'





# per github warning instruction
# gem 'excon', '~> 0.71.1'

# gem 'nokogiri', '~> 1.10', '>= 1.10.7'
# gem 'loofah', '~> 2.4'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'

  gem 'pry-rails', '~> 0.3.9'
  gem 'pry-nav', '~> 0.3.0'

  gem 'better_errors', '~> 2.5', '>= 2.5.1'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

# ruby '2.5.0'
