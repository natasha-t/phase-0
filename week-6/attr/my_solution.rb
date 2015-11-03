#Attr Methods

# I worked on this challenge [by myself, with:]

# I spent [#] hours on this challenge.

# Release 5

class NameData
  attr_accessor :name

  def initialize
    @name = "Natasha"
  end
end


class Greetings
  def initialize
    @new_name = NameData.new
  end

  def hello
    puts "Hello " + @new_name.name + "!" + " How wonderful to see you today"
  end
end

greeting = Greetings.new
greeting.hello



# Release 1
  # These methods are returning the values of the instance variables that are set in the initialize method by being referred to per method using the "@" symbol. To modify the values of the instance variables, the 'change' methods allow for new values to be set

# Release 2
  # Release 1 included a method that accessed the @age instance variable. In release 2, the age became available via an attr_reader which returns the value of age; what_is_age had done the same thing
  # what_is_age method was replaced by attr_reader :age
  # The code is simpler; attr_reader eliminated the need to write another method just to print the age.

# Release 3
  # Now age has been identified as attr_writer, which allows its data to be modified, which happens on line 68.
  # change_my_age method was replaced by attr_writer
  # The code is simpler because a separate method meant to modify data has been replaced by a built-in writer method that can also change data and only needs one line

# Reflection
# A reader method allows for its data to be viewed outside of the class (but not manipulated)
# A writer method allows for its data to be changed outside of the class, but it can't be viewed/not readable.
# Attr methods let you access data in classes without having to create individual methods that would essentially do the same thing (either view or change that data outside of the class).
# Using accessor methods depends on what kind of data you're dealing with. If the data is private, like user passwords or social security numbers, you wouldn't want that information to be readable and/or manipulated outside the class, so you would not use an accessor method in that case.
# At first I was confused about how data is sent from one class to another in Release 5. I didn't quite see what the significance was of using the attr_reader method on :name in the Greetings class. It wasn't until I called NameData.name within the Greetings hello method that I saw the name from NameData was in fact being accessed due to attr_reader.