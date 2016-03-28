# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'shawarma/version'

Gem::Specification.new do |spec|
  spec.name          = 'shawarma'
  spec.version       = Shawarma::VERSION
  spec.authors       = ['James Thompson']
  spec.email         = %q{james@mavenlink.com}

  spec.summary       = %q{TODO: Write a short summary, because Rubygems requires one.}
  spec.description   = %q{TODO: Write a longer description or delete this line.}
  spec.homepage      = %q{TODO: Put your gem's website or public repo URL here.}
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = %w{lib}

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = %q{TODO: Set to 'http://mygemserver.com' to prevent pushes to rubygems.org, or delete to allow pushes to any server.}
  end

  spec.add_runtime_dependency 'aws-sdk', '~> 2.2.30'

  spec.add_development_dependency 'bundler', '~> 1.8'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'minitest'
end
