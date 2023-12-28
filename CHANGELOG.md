# Change log

## master (unreleased)

### New Features

* Initial Release
* Add `ruby-3.0` and `ruby-3.1` to CI
* Add `ruby-3.3` to CI
* Add `yamllint` check in CI
* Add `dependabot` check for `GitHub Actions`

### Fixes

* Fix `markdownlint` failure because of old `nodejs` in CI

### Changes

* Allow failures on `ruby-head` in CI
* Drop support of `ruby-2.5`, `ruby-2.6`, `ruby-2.7` since it's EOLed
* Freeze dependencies versions in `Gemfile.lock`
* Check `dependabot` at 8:00 Moscow time daily
* Changes from `rubocop-rspec` update to 2.9.0
