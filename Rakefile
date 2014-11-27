#!/usr/bin/env ruby

# File: Rakefile
# Time-stamp: <2014-11-27 15:23:20 pierre>
# Copyright (C) 2014 Pierre Lecocq
# Description: Configur gem Rakefile

task :default => :help

# rake help
task :help do
  puts "Configur - Simply set configuration for your ruby class or module"

  puts "\nAvailable tasks:"
  puts " * test: run rspec tests"

  puts"\nPlease see https://rubygems.org/gems/configur for more details and documentation"
end

# rake test
require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:test)
