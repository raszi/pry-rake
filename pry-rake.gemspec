# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pry-rake/version'

Gem::Specification.new do |spec|
  spec.name          = 'pry-rake'
  spec.version       = PryRake::VERSION
  spec.authors       = ['KARASZI István']
  spec.email         = ['github@spam.raszi.hu']
  spec.summary       = %q{rake command for pry}
  spec.description   = %q{This gem adds a rake command to your pry console}
  spec.homepage      = 'https://github.com/raszi/pry-rake'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.5'
  spec.add_development_dependency 'rake'
  spec.add_dependency 'pry'
end
