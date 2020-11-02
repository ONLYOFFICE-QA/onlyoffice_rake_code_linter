# frozen_string_literal: true

require_relative 'lib/onlyoffice_rake_code_linter/name'
require_relative 'lib/onlyoffice_rake_code_linter/version'

Gem::Specification.new do |s|
  s.name = OnlyofficeRakeCodeLinter::NAME
  s.version = OnlyofficeRakeCodeLinter::VERSION
  s.platform = Gem::Platform::RUBY
  s.required_ruby_version = '>= 2.5'
  s.authors = ['ONLYOFFICE', 'Pavel Lobashov']
  s.email = %w[shockwavenn@gmail.com]
  s.summary = 'Lib with rake tasks to perform lint on source repos'
  s.description = 'Lib with rake tasks to perform lint on source repos of ONLYOFFICE'
  s.homepage = "https://github.com/onlyoffice-testing-robot/#{s.name}"
  s.metadata = {
    'bug_tracker_uri' => "#{s.homepage}/issues",
    'changelog_uri' => "#{s.homepage}/blob/master/CHANGELOG.md",
    'documentation_uri' => "https://www.rubydoc.info/gems/#{s.name}",
    'homepage_uri' => s.homepage,
    'source_code_uri' => s.homepage
  }
  s.files = Dir['lib/**/*']
  s.license = 'AGPL-3.0'
  s.add_runtime_dependency('rake', '~> 13.0')
  s.add_development_dependency('overcommit', '0.57.0')
  s.add_development_dependency('rspec', '3.10.0')
  s.add_development_dependency('rubocop', '0.93.1')
  s.add_development_dependency('rubocop-performance', '1.8.1')
  s.add_development_dependency('rubocop-rake', '0.5.1')
  s.add_development_dependency('rubocop-rspec', '1.44.1')
  s.add_development_dependency('simplecov', '0.19.1')
  s.add_development_dependency('yard', '0.9.25')
end
