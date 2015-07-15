require "rubygems"
require "bundler/setup"
require "sinatra"
require "slim"
require "sprockets"
require "./app.rb"

set :run, false
set :raise_errors, true

map '/assets' do
  environment = Sprockets::Environment.new
  environment.append_path 'assets/stylesheets'
  environment.append_path 'assets/javascripts'
  environment.append_path 'assets/images'
  run environment
end

run Sinatra::Application
