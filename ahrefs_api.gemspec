# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ahrefs_api/version'

Gem::Specification.new do |spec|
  spec.name          = "ahrefs_api"
  spec.version       = AhrefsAPI::VERSION
  spec.authors       = ["Christoph Engelhardt"]
  spec.email         = ["christoph@it-engelhardt.de"]
  spec.summary       = "A light-weight wrapper around the Ahrefs API"
  spec.description   = "AhrefsAPI is a light-weight wrapper for the AhrefsAPI (https://ahrefs.com/api/documentation). It currently supports parts of the 'backlinks' endpoint"
  spec.homepage      = 'https://github.com/yas4891/ahrefs_api'
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_dependency('httparty', '~> 0.13.1')
end
