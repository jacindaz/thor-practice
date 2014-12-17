# filename: getting_started_thor.rb
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

# SayHi.start(ARGV)


class FileOp < Thor
  desc 'output FILE_NAME', 'print out the contents of FILE_NAME'

  def output(file_name)
    puts File.read(file_name)
  end
end

FileOp.start(ARGV)
