# Shawarma

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

TODO: Write usage instructions here

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment. Run `bundle exec shawarma` to use the code located in this directory, ignoring other installed copies of this gem.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/[my-github-username]/shawarma/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request