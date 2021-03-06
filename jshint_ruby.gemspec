# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jshint_ruby/version'

Gem::Specification.new do |spec|
  spec.name          = "jshint_ruby"
  spec.version       = JshintRuby::VERSION
  spec.authors       = ["StupidCodeFactory"]
  spec.email         = ["ymarquet@gmail.com"]
  spec.description   = %q{API to lint your javascript source code from ruby}
  spec.summary       = %q{API to lint your javascript source code from ruby, it ships with a copy of JSHint}
  spec.homepage      = "https://github.com/StupidCodeFactory/jshint_ruby"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "execjs"
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 2.14"
end
