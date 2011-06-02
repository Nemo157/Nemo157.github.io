source "http://rubygems.org"

gem 'rack'
gem 'unicorn'

group :development, :test do
  gem 'maruku'

  gem 'rb-fsevent', :require => false if RUBY_PLATFORM =~ /darwin/i
  gem 'growl',      :require => false if RUBY_PLATFORM =~ /darwin/i

  gem 'guard-haml',
        :git => 'git://github.com/Nemo157/guard-haml.git',
        :branch => 'internal'

  gem 'guard-sass',
        :git => 'git://github.com/Nemo157/guard-sass.git',
        :branch => 'internal'

  gem 'guard-livereload'
  gem 'guard-coffeescript'
end
