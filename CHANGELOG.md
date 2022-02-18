# Change log

## master (unreleased)

### New Features

* Initial Release
* Add `ruby-3.0` and `ruby-3.1` to CI

### Fixes

* Fix `markdownlint` failure because of old `nodejs` in CI

### Changes

* Allow failures on `ruby-head` in CI
* Drop support of ruby 2.5 since it's EOLed
* Freeze dependencies versions in `Gemfile.lock`
