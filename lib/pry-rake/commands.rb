PryRake::Commands = Pry::CommandSet.new

require 'pry-rake/commands/rake'

Pry.commands.import PryRake::Commands
