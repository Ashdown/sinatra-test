require './app'
require 'sinatra/activerecord/rake'
require 'rspec/core/rake_task'
require 'jasmine'

load 'jasmine/tasks/jasmine.rake'


RSpec::Core::RakeTask.new(:spec)

task :default=>[:'jasmine:ci', :spec]

