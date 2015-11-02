# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: array of strings
# Output:
  # Die#sides: # of sides
  # Die#roll: randomly selected element from array of labels
  # Die.new with empty array --> raise ArgumentError
# Steps:
  # for initialize: if labels = an empty array, raise an ArgumentError
  # sides method: output # of sides (length of labels array)
  # roll method: randomly select element from labels array


# Initial Solution

# class Die
#   def initialize(labels)
#     @labels = labels
#     if labels == []
#       raise ArgumentError.new("You tryna make an invisible die??")
#     end
#   end

#   def sides
#     p labels.length
#   end

#   def roll
#     p labels.sample
#   end
# end



# Refactored Solution

class Die
  def initialize(labels)
    @labels = labels
    if labels == []
      raise ArgumentError.new("You tryna make an invisible die??")
    end
  end

  def sides
    p @labels.length
  end

  def roll
    p @labels.sample
  end
end


# empty_die = Die.new([])

die = Die.new(["A", "B", "C", "D", "E"])
die.sides
die.roll




# Reflection

# What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
    # The only difference pertained to the input. The first die class's input was an integer, and all other outputs for its methods were integers as well. This new die class' input was an array so .length and .sample were used (.rand cannot be used on non-integer values)
# What does this exercise teach you about making code that is easily changeable or modifiable?
    # By using a class, it makes it much easier to modify methods. Everything is encapsulated in one entity
# What new methods did you learn when working on this challenge, if any?
    # I learned about .sample which selects a random element from array
# What concepts about classes were you able to solidify in this challenge?
    # Changing the initial input of a class, adjusting subsequent methods based on that input