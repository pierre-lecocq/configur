#!/usr/bin/env ruby

# File: configur.rb
# Time-stamp: <2014-11-27 16:26:10 pierre>
# Copyright (C) 2014 Pierre Lecocq
# Description: Configur gem module

# Configur module
module Configur
  # Version constant
  VERSION = [1, 1, 0].join '.'

  # Configur
  def configur(&block)
    @@_cdata ||= {}
    @@_oid = self.object_id

    def block.method_missing(m, *args, &block)
      name = m.to_s
      super if name[-1] != '='
      Configur.set_config @@_oid, name.gsub('=', ''), args[0]
    end

    yield block
  end

  # Get all configs
  def get_configs
    @@_cdata[self.object_id] || {}
  end

  # Get a config value
  def get_config(name)
    @@_cdata[self.object_id][name.to_sym] || nil
  end

  # Set a config value
  def self.set_config(oid, name, value)
    @@_cdata[oid] ||= {}
    @@_cdata[oid][name.to_sym] = value
  end
end
