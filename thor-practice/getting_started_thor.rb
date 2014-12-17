# to run this file:
# ruby getting_started_thor.rb hi 'Jacinda'
#   =>  Hi Jacinda!

# to see all commands I can run:
# ruby getting_started_thor.rb


require 'thor'

class SayHi < Thor
  desc "hi NAME", "say hello to NAME"

  def hi(name)
    puts "Hi #{name}!"
  end
end

SayHi.start(ARGV)
