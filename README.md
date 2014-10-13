# Ex

Ex is a simple gem to make running external easy.

There are existing options such as [Rubysh](https://github.com/gdb/rubysh) and [Subprocess](https://github.com/stripe/subprocess) however these didn't really appeal to my world view.

Subprocess treats non-zero respones as exceptions - a design decision I do not agree with. Some utilities return non-zero status codes to indicate something other than *their* failure.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ex'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ex

## Usage

```ruby
@result = Ex.run("ls -lah")
if @result.successful?
  puts "Success"
end
@result.status_code
@result.output?
@result.stdout
@result.stderr
```

## Contributing

1. Fork it ( https://github.com/yourabi/ex/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Squash your commits into a single commit
5. Make sure all tests pass
6. Push to the branch (`git push origin my-new-feature`)
7. Create a new Pull Request
8. Make sure the PR can be merged cleanly
