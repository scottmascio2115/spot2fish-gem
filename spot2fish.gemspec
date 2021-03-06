# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'spot2fish/version'

Gem::Specification.new do |spec|
  spec.name          = "spot2fish"
  spec.version       = Spot2fish::VERSION
  spec.authors       = ["Scott Mascio"]
  spec.email         = ["scottmascio@gmail.com"]
  spec.summary       = %q{Ruby library for the Spot2fish API.}
  spec.description   = %q{Search the Spot2fish API for fishing spots.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "rspec"

  spec.add_dependency "httparty", "~> 0.13.7"
end
