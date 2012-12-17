# input = Input.new('test_input.txt')

input = []

File.foreach('test_input.txt') do |line|
  input << line.chomp.split
end

# dragonX = Navigation.new(input)
# dragonX.outcome

p input

