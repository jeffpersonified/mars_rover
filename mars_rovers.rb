require './lib/navigation.rb'

input = []

File.foreach('input.txt') do |line|
  input << line.chomp.split
end

dragonX = Navigation.new(input)
dragonX.execute
dragonX.outcome "output.txt"

