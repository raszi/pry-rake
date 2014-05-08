# PryRake

This pry plugin adds `rake` command to your pry console.

## Installation

Add this line to your application's Gemfile:

    gem 'pry-rake'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install pry-rake

## Usage

To list the available tasks:

    [1] pry(main)> rake -T
    rake build    # Build pry-rake-0.0.1.gem into the pkg directory
    rake install  # Build and install pry-rake-0.0.1.gem into system gems
    rake release  # Create tag v0.0.1 and build and push pry-rake-0.0.1.gem to Rubygems

Or you can filter the same way as you used to:

    [2] pry(main)> rake -T build
    rake build  # Build pry-rake-0.0.1.gem into the pkg directory

To run a rake task:

    [3] pry(main)> rake build
    pry-rake 0.0.1 built to pkg/pry-rake-0.0.1.gem.

## Contributing

1. Fork it ( http://github.com/raszi/pry-rake/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
