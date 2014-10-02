# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'serialy/sassy/version'

Gem::Specification.new do |spec|
  spec.name          = "serialy-sassy"
  spec.version       = Serialy::Sassy::VERSION
  spec.authors       = ["Scott Davis"]
  spec.email         = ["me@sdavis.info"]
  spec.summary       = %q{Deserialize json or yaml file into a sass map}
  spec.description   = %q{Deserializ a json or yaml file into a sass map}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_dependency 'sassy_hash', '~> 0.0.6'
  spec.add_dependency 'multi_json', '~> 1.10.1'
end
