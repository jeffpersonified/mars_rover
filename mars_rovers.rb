require './lib/navigation.rb'

INPUT_FILE = ARGV[0]
input = []

File.foreach INPUT_FILE do |line|
  input << line.chomp.split
end

dragonX = Navigation.new input
dragonX.execute
dragonX.outcome "output.txt"

