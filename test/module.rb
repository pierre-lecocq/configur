#!/usr/bin/env ruby

# File: module.rb
# Time-stamp: <2014-11-25 23:38:13 pierre>
# Copyright (C) 2014 Pierre Lecocq
# Description: Module test for configur gem

require_relative '../lib/configur'

# Define an awesome module
module MyModule
  extend Configur
end

# Configure MyModule
MyModule.configur do |config|
  config.debug = true
  config.name = 'mymodule'
end

# Get the name
puts MyModule.get_config :name

# Override and extend MyModule config
MyModule.configur do |config|
  config.name = 'myawesomemodule'
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
puts MyModule.get_config :debug
puts MyModule.get_config :name
puts MyModule.get_config :db_host
puts MyModule.get_config :redis

# Get all configs as an Hash
puts MyModule.get_configs
