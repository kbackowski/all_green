# AllGreen

Run all your test suites (rspec, cucumber, rails unit tests and more...) using one command. 

AllGreen will handle exit codes so it's perfect for using with continuous integration system.

Currently AllGreen will auto-detect :

* RSpec
* Spinach

## Installation

Add this line to your application's Gemfile:

    gem 'all_green'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install all_green

## Usage

Run all tests

    $ bundle exec all_green

## Roadmap

* Add support for popular testing frameworks : Cucumber, MiniTest, Rails unit test
* Pass configuration options for each engine
* Set tests order 

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
