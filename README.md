# Shawarma

[![Gem Version](https://badge.fury.io/rb/shawarma.svg)](https://badge.fury.io/rb/shawarma)
[![Build Status](https://travis-ci.org/plainprogrammer/shawarma.svg?branch=master)](https://travis-ci.org/plainprogrammer/shawarma)

Shawarma is a convenience gem for producing Ruby applications that can run on
the Amazon Web Services (AWS) Lambda platform. It relies on AWS Lambda's native
support for Java and the availability of JRuby. The AWS Lambda environment is a
fairly restrictive one, so this is not meant to be a general purpose way to get
existing code onto the platform. Instead, this gem embraces a specific pattern
for developing and deploying Ruby code to AWS Lambda.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'shawarma'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install shawarma

## Usage

The key to what Shawarma provides is a pattern of how to right Ruby classes
that can be easily adapted to run on AWS Lambda. The key is that Shawarma is
intended to provide the development framework/pattern and a deployment
mechanism that can be used either as an end-to-end solution, or as a packager
that is integrated into your own deployment toolchain.

The goal is that if you write a class like the one below, Shawarma will be
able to package and deploy that class for execution on AWS Lambda:

```ruby
class HelloLambda
  include Shawarma::Function

  def perform
    logger.log "received : #{request.name}"
    "Hello, #{request.name}"
  end
end
```

**TODO: Explain how this works, restrictions, etc.**

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment. Run `bundle exec shawarma` to use the code located in this directory, ignoring other installed copies of this gem.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/[my-github-username]/shawarma/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
