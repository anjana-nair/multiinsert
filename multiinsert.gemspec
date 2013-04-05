# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'multiinsert/version'

Gem::Specification.new do |spec|
  spec.name          = "multiinsert"
  spec.version       = Multiinsert::VERSION
  spec.authors       = ["anjana nair"]
  spec.email         = ["anjana.arun@revenuemed.com"]
  spec.description   = %q{Inserting and updating multiple records for a model}
  spec.summary       = %q{Inserting and updating multiple records for a model on saving a form}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
