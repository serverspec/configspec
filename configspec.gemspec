# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'configspec/version'

Gem::Specification.new do |spec|
  spec.name          = "configspec"
  spec.version       = Configspec::VERSION
  spec.authors       = ["Gosuke Miyashita"]
  spec.email         = ["gosukenator@gmail.com"]
  spec.description   = %q{A simple configuration management tool powered by RSpec}
  spec.summary       = %q{A simple configuration management tool powered by RSpec}
  spec.homepage      = "https://github.com/mizzy/configspec"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "net-ssh"
  spec.add_runtime_dependency "rspec", ">= 2.13.0"
  spec.add_runtime_dependency "specinfra", ">= 0.0.2"
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
