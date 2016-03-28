# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'shawarma/version'

Gem::Specification.new do |spec|
  spec.name          = 'shawarma'
  spec.version       = Shawarma::VERSION
  spec.authors       = ['James Thompson']
  spec.email         = %q{jwthompson2@gmail.com}

  spec.summary       = %q{An easy way to get Ruby onto AWS Lambda}
  spec.description   = %q{A convenience gem for building and deploying Ruby to AWS Lambda}
  spec.homepage      = %q{https://github.com/plainprogrammer/shawarma}
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = %w{lib}

  spec.add_runtime_dependency 'aws-sdk', '~> 2.2.30'

  spec.add_development_dependency 'bundler', '~> 1.8'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'minitest'
end
