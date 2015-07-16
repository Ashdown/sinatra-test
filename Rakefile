require './app'
require 'sinatra/activerecord/rake'
require 'rspec/core/rake_task'
require 'jasmine'
require 'jshintrb/jshinttask'

load 'jasmine/tasks/jasmine.rake'

desc 'js validation'
Jshintrb::JshintTask.new :jshint do |task|
  task.pattern = 'assets/javascripts/*.js'
  task.options = :defaults
end

RSpec::Core::RakeTask.new(:spec)

task :default=>[:jshint, :'jasmine:ci', :spec]

