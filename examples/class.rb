#!/usr/bin/env ruby

# File: simple.rb
# Time-stamp: <2014-11-27 16:27:50 pierre>
# Copyright (C) 2014 Pierre Lecocq
# Description: Class test for configur gem

require_relative '../lib/configur'

# Define an awesome class
class MyClass
  include Configur
end

my_class = MyClass.new

# Configure MyClass
my_class.configur do |config|
  config.debug = true
  config.name = 'myclass'
end

# Get the name
puts my_class.get_config :name

# Override and extend MyClass config
my_class.configur do |config|
  config.name = 'myawesomeapp'
  config.db_host = 'localhost'
  config.db_name = 'mydb'
  config.db_user = 'dbuser'
  config.db_passwd = 'p4s$'
  config.redis = {
    :host => 'localhost',
    :port => 6_379
  }
end

# Get some config values
puts my_class.get_config :debug
puts my_class.get_config :name
puts my_class.get_config :db_host
puts my_class.get_config :redis

# Get all configs as an Hash
puts my_class.get_configs
