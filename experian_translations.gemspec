# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'experian_translations/version'

Gem::Specification.new do |spec|
  spec.name          = 'experian_translations'
  spec.version       = ExperianTranslations::VERSION
  spec.authors       = ['Damien Wilson']
  spec.email         = ['damien@mindglob.com']

  spec.summary       = 'Mappings for field values found within Experian credit report XML files'
  spec.description   = 'Mappings for field values found within Experian credit report XML files'
  spec.homepage      = 'https://github.com/damien/experian_translations'
  spec.license       = 'MIT'

  spec.files = `git ls-files -z`
    .split("\x0")
    .reject { |f| f.match(%r{^(test|spec|features)/}) }

  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'activesupport', '~> 4.1'
  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
end
