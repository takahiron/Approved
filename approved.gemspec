# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'approved/version'

Gem::Specification.new do |spec|
  spec.name          = "approved"
  spec.version       = Approved::VERSION
  spec.authors       = ["takahiro.naito"]
  spec.email         = ["odzbdadd1@gmail.com"]
  spec.summary       = %q{approved: Write a short summary. Required.}
  spec.description   = %q{approved: Write a longer description. Optional.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
