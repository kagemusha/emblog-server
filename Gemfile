source 'https://rubygems.org'
ruby '2.1.1'
gem 'rails', '4.1.0'
gem 'pg'
gem 'rack-cors', :require => 'rack/cors'
gem 'active_model_serializers'


gem 'devise'
gem 'rolify'
gem 'pundit'

group :development do
  gem 'spring'
  gem 'better_errors'
  gem 'binding_of_caller', :platforms=>[:mri_19, :mri_20, :mri_21, :rbx]
  gem 'foreman'
  gem 'quiet_assets'
  gem 'rails_layout'
end
group :development, :test do
  gem 'thin'
  gem 'factory_girl_rails'
  gem 'pry-rails'
  gem 'pry-rescue'
  gem 'rspec-rails'
end
group :production do
  gem 'unicorn'
end
group :test do
  gem 'capybara'
  gem 'database_cleaner', '1.0.1'
  gem 'email_spec'
end

gem 'sdoc', '~> 0.4.0',          group: :doc
