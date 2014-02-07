# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'guard/hologram/version'

Gem::Specification.new do |spec|
  spec.name          = "guard-hologram"
  spec.version       = Guard::Hologram::VERSION
  spec.authors       = ["Ken Mayer", "Greg Cobb"]
  spec.email         = ["ken@bitwrangler.com"]
  spec.description   = %q{Guard plugin for the Hologram gem (https://github.com/trulia/hologram)}
  spec.summary       = %q{Guard plugin for the Hologram gem}
  spec.homepage      = "https://github.com/kmayer/guard-hologram"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
