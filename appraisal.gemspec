# frozen_string_literal: true

require_relative 'lib/appraisal/version'

Gem::Specification.new do |spec|
  spec.name          = 'appraisal'
  spec.version       = Appraisal::VERSION
  spec.platform      = Gem::Platform::RUBY
  spec.author        = ['Joe Ferris', 'Prem Sichanugrist']
  spec.email         = ['jferris@thoughtbot.com', 'prem@thoughtbot.com']
  spec.description   = 'Appraisal integrates with bundler and rake to test your library against different versions of dependencies in repeatable scenarios called "appraisals."'
  spec.summary       = 'Find out what your Ruby gems are worth'
  spec.homepage      = 'http://github.com/thoughtbot/appraisal'
  spec.license       = 'MIT'
  spec.files         = Dir['**/*'].select { |f| f[%r{^(lib/|bin/|README.md|.*gemspec/)}] }
  spec.test_files    = Dir['**/*'].select { |f| f[%r{^spec/}] }
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 2.5'

  spec.add_dependency('rake', ['>= 10', '< 14'])
  spec.add_dependency('bundler', ['>= 1.17', '< 3'])
  spec.add_dependency('thor', ['>= 0.14', '< 2'])
end
