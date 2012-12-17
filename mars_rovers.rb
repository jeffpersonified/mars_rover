input = []

File.foreach('test_input.txt') do |line|
  input << line.chomp.split
end

input.first.map! { |coordinate| coordinate.to_i }
input.each_with_index do |

end



# input.each_with_index do | direction, i |
#   unless i % 2 == 0
#     directions << direction
#   end
# end

p input

input.first

# Navigation.new()

