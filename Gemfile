source 'https://rubygems.org'

gem 'rails', '~> 3.2.11'

gem 'mysql2', '~> 0.3.20'
gem 'pg'

gem 'jquery-rails', '2.1.4' # Need this version for autocomplete to work
gem 'rails3-jquery-autocomplete', '1.0.10'

# For CAS Authentication
#gem 'rubycas-client-rails', '0.1.1' #This version doesn't exist on RubyGems.com
gem 'rubycas-client', '~> 2.3.9.rc1'

# For Errbit
gem 'airbrake'

gem 'whenever', :require => false
gem 'redis-rails'
gem 'redis-namespace'
gem 'redis-session-store'

gem 'puma'
gem 'syslog-logger'
gem 'test-unit', '~> 3.0'

group :assets do
  gem 'therubyracer'
  gem 'less-rails' #Sprockets (what Rails 3.1 uses for its asset pipeline) supports LESS
  gem 'twitter-bootstrap-rails'

  # Compression for production
  gem 'uglifier', '>= 1.0.3'
  #gem 'yui-compressor' # Requires java
end

group :development, :test do
  gem 'dotenv-rails'
end
