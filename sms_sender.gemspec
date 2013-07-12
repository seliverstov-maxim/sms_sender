# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sms_sender/version'

Gem::Specification.new do |spec|
  spec.name          = "SmsSender"
  spec.version       = SmsSender::VERSION
  spec.authors       = ["Seliverstov Maxim"]
  spec.email         = ["maxim.web.developer@gmail.com"]
  spec.description   = %q{Gem which sends sms}
  spec.summary       = %q{Gem which sends sms}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
