#!/usr/bin/env ruby

# File: configur.rb
# Time-stamp: <2014-11-25 23:31:52 pierre>
# Copyright (C) 2014 Pierre Lecocq
# Description: Configur gem module

# Configur module
module Configur
  # Version constant
  VERSION = [0, 1, 0].join '.'

  # Configur
  def configur(&block)
    @@_configur_data ||= {}

    def block.method_missing(m, *args, &block)
      name = m.to_s.gsub '=', ''
      Configur.set_config name, args[0]
    end

    yield block
  end

  # Get all configs
  def get_configs
    @@_configur_data || {}
  end

  # Get a config value
  def get_config(name)
    @@_configur_data[name.to_sym] || nil
  end

  # Set a config value
  def self.set_config(name, value)
    @@_configur_data[name.to_sym] = value
  end
end
