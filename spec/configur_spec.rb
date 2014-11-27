#!/usr/bin/env ruby

# File: configur_spec.rb
# Time-stamp: <2014-11-27 16:33:40 pierre>
# Copyright (C) 2014 Pierre Lecocq
# Description: Configure spec test file

require_relative '../lib/configur'

describe Configur do
  describe 'Module configuration' do
    # Set module
    my_test_module = Module.new
    my_test_module.extend Configur

    # Test extension
    it { expect(my_test_module.methods).to include :configur }

    # Set module configuration
    my_test_module.configur do |c|
      c.name = 'My test module'
      c.autor = 'Pierre Lecocq'
    end

    # Test configuration queries
    it {expect(my_test_module.get_config :name).to eql 'My test module'}
    it {expect(my_test_module.get_config :unknown).to be nil }
    it {expect(my_test_module.get_configs).to be_a Hash }
    it {expect(my_test_module.get_configs.keys.length).to eql 2 }
  end

  describe 'Class configuration' do
    # Set class

    class MyClass
      include Configur
    end
    my_test_class = MyClass.new

    # Test extension
    it { expect(my_test_class.methods).to include :configur }

    # Set class configuration
    my_test_class.configur do |c|
      c.name = 'My test class'
      c.autor = 'Pierre Lecocq'
    end

    # Test configuration queries
    it {expect(my_test_class.get_config :name).to eql 'My test class'}
    it {expect(my_test_class.get_config :unknown).to be nil }
    it {expect(my_test_class.get_configs).to be_a Hash }
    it {expect(my_test_class.get_configs.keys.length).to eql 2 }
  end
end
