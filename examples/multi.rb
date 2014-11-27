#!/usr/bin/env ruby

# File: multi.rb
# Time-stamp: <2014-11-27 16:26:40 pierre>
# Copyright (C) 2014 Pierre Lecocq
# Description: Multi objects test for configur gem

require_relative '../lib/configur'

# Define a few awesome modules and classes
module MyModuleOne
  extend Configur
end

module MyModuleTwo
  extend Configur
end

class MyClassOne
  include Configur
end

class_one = MyClassOne.new

class MyClassTwo
  include Configur
end

class_two = MyClassTwo.new

# Configure modules and classes
MyModuleOne.configur do |config|
  config.debug = true
  config.name = 'My module one'
end

MyModuleTwo.configur do |config|
  config.name = 'My module two'
end

class_one.configur do |config|
  config.name = 'My class one'
end

class_two.configur do |config|
  config.name = 'My class two'
end

# Get the names
puts MyModuleOne.get_config :name
puts MyModuleTwo.get_config :name
puts class_one.get_config :name
puts class_two.get_config :name

# Override the some names
MyModuleTwo.configur do |config|
  config.name = 'My module two modified'
end

class_two.configur do |config|
  config.name = 'My class two modified'
end

# Get the names, again
puts MyModuleOne.get_config :name
puts MyModuleTwo.get_config :name
puts class_one.get_config :name
puts class_two.get_config :name
