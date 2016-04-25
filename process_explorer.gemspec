# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'process_explorer/version'

Gem::Specification.new do |spec|
  spec.name          = 'process_explorer'
  spec.version       = ProcessExplorer::VERSION
  spec.authors       = ['Ondrej Hosak', 'Ivo Reznicek']
  spec.email         = ['ondrej.hosak@avg.com', 'ivo.reznicek@avg.com']
  spec.summary       = 'Processes helper for windows'
  spec.description   = 'Processes helper for windows'
  spec.homepage      = 'https://github.com/AVGTechnologies'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.10'
end
