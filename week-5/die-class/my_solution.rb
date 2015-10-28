# Die Class 1: Numeric

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input: new Die class with specified number of sides; .sides method call, .roll method call
# Output: .sides returns the number of sides in the Die
  # .roll returns random number between 1 and 6
# Steps:
# define Die class
    # state initialize method with instance variables
    # define sides method
        # calling this method will output how many sides this die has
    # define roll method
        # generate random number between 1 and 6 using built-in ruby method


# 1. Initial Solution

class Die
  def initialize(sides)
    @sides = sides
    if sides < 1
      raise ArgumentError.new("You tryna make an invisible die??")
    end
  end

  def sides
    puts "This die has #{@sides} side(s)"
  end

  def roll
    p rand(1..6)
  end
end

die = Die.new(1)
die.sides
die.roll

# 3. Refactored Solution







# 4. Reflection
# What is an ArgumentError and why would you use one?
      # an ArgumentError is an error message Ruby gives when there is an error with the arguments passed into a method. You can customize the error message by raising a new ArgumentError and passing in a string value that will contain the reason why the error was raised
# What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
      # I used the .rand ruby method to generate a random number between the bounds I specified.
# What is a Ruby class?
      # a Ruby class is similar to a blueprint for future objects you can make out of that class. For example, if you have multiple breeds of a bunny, you can create a class called Bunny that is intialized with an argument of breed. When you want to create a new netherland dwarf bunny object, you simply write Bunny.new("netherland dwarf").
# Why would you use a Ruby class?
      # Ruby classes are useful because it categorizes the objects in your program so you can make multiple instances of a class that have can inherit specific properties or methods from that class.
# What is the difference between a local variable and an instance variable?
      # Instance variables contain an @ symbol before the name and exists within the scope of the object it's defined in, making it an instance of that object. A local variable has a larger scope compared to the instance variable, where it's not associated with a particular object.
# Where can an instance variable be used?
      # Instance variables can be used in class definitions and methods