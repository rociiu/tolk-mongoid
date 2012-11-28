source "http://rubygems.org"

gem "rails", "3.2.9"
gem 'jruby-openssl'

gem 'kaminari'
gem "ya2yaml"
gem 'mongoid', :git => 'git://github.com/mongoid/mongoid.git', :branch => '3.0.0-stable'

group 'test' do
  gem "capybara", :git => "https://github.com/jnicklas/capybara.git"
  gem "factory_girl_rails"
  gem "mocha"
  gem 'launchy'
end

group 'development' do
  if RUBY_VERSION < '1.9'
    gem "ruby-debug", ">= 0.10.3"
  end
end