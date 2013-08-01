#! /usr/bin/env gem build
# encoding: utf-8
$:.push File.expand_path('../lib', __FILE__)
require 'acts_as_parameter_object/version'

Gem::Specification.new do |gem|
  gem.name          = 'acts_as_parameter_object'
  gem.version       = ActsAsParameterObject::VERSION
  gem.authors       = ["Naotoshi Seo"]
  gem.email         = ["sonots@gmail.com"]
  gem.homepage      = "https://github.com/sonots/acts_as_parameter_object"
  gem.summary       = "Acts as a Parameter Object cf. Refactoring: Ruby Edition"
  gem.description   = gem.summary
  gem.licenses      = ["MIT"]

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_runtime_dependency "activemodel"

  # for testing
  gem.add_development_dependency "rake"
  gem.add_development_dependency "rspec", "~> 2.11"

  # for debug
  gem.add_development_dependency "pry"
  gem.add_development_dependency "pry-nav"
end
