# classes: have a single responsibility (SRP single resp. principle)
# classes ought to be reuseable
# Always wrap instance variables in accessor methods instead of directly referring to variables

# methods: ONLY ONE RESPONSIBILITY
# avoid message chaining (law of demeter)
# DEPENDENCY INJECTION - use duck typing in liu of a class name (an instance that responds to behavior, p66)




##################
# class Rover
#   attr_reader :init_coord, :command

#   def initialize(init_coord, command)
#     @init_coord = init_coord
#     @command = command
#   end

#   def init_coord
#     @init_coord
#   end 
# end

# class Plateau
#   attr_reader :length, :width, :area

#   def initialize(length, width)
#     @lenth = length
#     @width = widht
#     @area = length * width
#   end
# end

# class Command
#   attr_reader :move, :rotation

#   def initialize(string)
#     @move 
#     @rotation
#   end

#   # private

#   def move
#   end

#   def rotation
#   end
# end


#####

# class Input
#   def initialize(txt)
#     @init_coord = 

#     Message = Struct.new(:plateau, :commands)

# end
