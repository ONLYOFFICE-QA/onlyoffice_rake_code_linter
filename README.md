# OnlyofficeRakeCodeLinter

Gem for perform linter on static code

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'onlyoffice_rake_code_linter'
```

And then execute:

```shell script
bundle
```

Or install it yourself as:

```shell script
gem install onlyoffice_rake_code_linter
```

## Usage

Integrate into your `Rakefile` with

```ruby
require 'onlyoffice_rake_code_linter'

spec = Gem::Specification.find_by_name 'onlyoffice_rake_code_linter'
rakefile = "#{spec.gem_dir}/lib/onlyoffice_rake_code_linter/Rakefile"
load rakefile
```

and see available task with `rake -T`
