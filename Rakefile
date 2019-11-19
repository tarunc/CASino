#!/usr/bin/env rake
require 'bundler'
require 'rake'
require 'bundler/gem_tasks'
require 'rspec/core/rake_task'

task default: :spec

desc 'Run all specs'
RSpec::Core::RakeTask.new(:spec) do |spec|
  spec.pattern = FileList['spec/**/*_spec.rb']
end

desc 'Run specific specs'
RSpec::Core::RakeTask.new(:sspec) do |spec|
  spec.pattern = FileList["spec/#{ENV['WHAT']}_spec.rb"]
end
