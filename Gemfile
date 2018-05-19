source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.3'

# Use postgresql as the database for Active Record
gem 'pg', '~> 0.18'

# Use Puma as the app server
gem 'puma', '~> 3.7'

# Use SCSS for stylesheets
gem 'sass-rails'

# Font Awesome
gem 'font-awesome-sass'

# Moment.js - manages dates and times
gem 'momentjs-rails'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier'

# Add vendor prefixes automatically to CSS
gem 'autoprefixer-rails'

# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'

# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use Devise for user authentication
gem 'devise'

gem 'simple_form'
gem 'haml-rails'

# Use jQuery with UJS
gem 'jquery-rails'

# Supports deployment to Heroku by making it easier to manage configurations
gem 'figaro'

group :development, :test do
  # Call 'binding.pry' anywhere in the code to stop execution and get a debugger console
  gem 'pry-rails'

  gem 'rspec-rails'
  gem 'factory_bot'
  gem 'shoulda-matchers'

  # Run 'annotate app/models/[model file]' to populate info about that model's schema in the model file
  gem 'annotate'

  gem 'faker'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end
