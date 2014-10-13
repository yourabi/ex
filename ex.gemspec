# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ex/version'

Gem::Specification.new do |spec|
  spec.name          = "ex"
  spec.version       = Ex::VERSION
  spec.authors       = ["Yousef Ourabi"]
  spec.email         = ["yourabi@gmail.com"]
  spec.summary       = %q{A super simple wrapper to execute a subprocess }
  spec.homepage      = "https://github.com/yourabi/ex"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.1"
end
