# rubterm [![Gem Version](https://img.shields.io/gem/v/rubterm?label=Version)](https://img.shields.io/gem/v/rubterm?label=Version) [![License](https://img.shields.io/badge/License-LGPL2-green)](https://img.shields.io/badge/License-LGPL2-green)

I couldn't find anything complete yet well documented so I made it myself.

Rubterm is a simple Ruby gem to control your terminal trough ANSI escape codes.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rubterm'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install rubterm

## Usage

**rubterm** comes in two versions:

* The "standard" one, `rubterm`, which uses the `Rubterm` object. You can find the docs for this version [here](./DOCSnormal.md).

* The "string" one, `rubterm_string`, which extends the `String` class and introduces two new objects, `Rcursor` and `Rscreen`. You can find the docs for this version [here](./DOCSstring.md)

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/DumbMahreeo/rubterm.
