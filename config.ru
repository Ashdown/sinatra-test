require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'slim'
require 'sprockets'
Dir[File.join(File.dirname(__FILE__), './lib/helpers', '*.rb')].each {|file| require file }
require './app.rb'

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
