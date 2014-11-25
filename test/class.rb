#!/usr/bin/env ruby

# File: simple.rb
# Time-stamp: <2014-11-25 23:44:45 pierre>
# Copyright (C) 2014 Pierre Lecocq
# Description: Class test for configur gem

require_relative '../lib/configur'

# Define an awesome class
class MyClass
  extend Configur
end

# Configure MyClass
MyClass.configur do |config|
  config.debug = true
  config.name = 'myclass'
end

# Get the name
puts MyClass.get_config :name

# Override and extend MyClass config
MyClass.configur do |config|
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
puts MyClass.get_config :debug
puts MyClass.get_config :name
puts MyClass.get_config :db_host
puts MyClass.get_config :redis

# Get all configs as an Hash
puts MyClass.get_configs
