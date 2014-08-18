# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'olive/version'

Gem::Specification.new do |spec|
  spec.name          = "olive"
  spec.version       = Olive::VERSION
  spec.authors       = ["Bunlong"]
  spec.email         = ["bunlong.van@gmail.com"]
  spec.summary       = %q{Olive is the rails helper​ gem that enables content_for in controllers.}
  spec.description   = %q{Olive is the rails helper​ gem that enables content_for in controllers.}
  spec.homepage      = "https://github.com/Bunlong/olive"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
