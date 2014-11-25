# File: configur.gemspec
# Time-stamp: <2014-11-26 00:03:40 pierre>
# Copyright (C) 2014 Pierre Lecocq
# Description: Configur library gemspec file

require File.expand_path('../lib/configur', __FILE__)

Gem::Specification.new do |gem|
  gem.name              = 'configur'
  gem.require_paths     = ['lib']
  gem.version           = Configur::VERSION
  gem.files             =
    %w(README.md LICENSE configur.gemspec) +
    `git ls-files lib spec`.split("\n")

  gem.authors           = ['Pierre Lecocq']
  gem.email             = ['pierre.lecocq@gmail.com']
  gem.summary           = 'Simply set configuration for your ruby class or module'
  gem.description       = 'Simply set configuration for your ruby class or module'
  gem.homepage          = 'https://github.com/pierre-lecocq/configur'
  gem.date              = '2014-11-25'
  gem.license           = 'MIT'
end
