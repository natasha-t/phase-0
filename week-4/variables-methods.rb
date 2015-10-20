# asks for person's first name, middle name, last name; greet person using full name

puts "Hello, what is your first name?"
first_name = gets.chomp
puts "cool. now what is your middle name?"
middle_name = gets.chomp
puts "and your last name?"
last_name = gets.chomp

puts "Well it's very nice to meet you " + first_name + " " + middle_name + " " + last_name + "!"

# Ask user their favorite number, add one to it, suggest new number

puts "what is your favorite number?"
num_int = gets.chomp.to_i + 1
new_num_string = num_int.to_s
puts "well uhh may I suggest a better number for you? Possibly " + new_num_string + "?"

# make it obvious whether the variable is pointing to an integer or string in the variable name

#Reflection
# - How do you define a local variable?
#     - a local variable is defined using a word with the first letter as lowercase. To separate two words you'd use an underscore i.e. my_variable
# - How do you define a method?
#     - a method is defined by the ``` def ``` keyword and the name of the method (using local variable naming rules), followed by a code block, then ends with the keyword ``` end ```
# - What is the difference between a local variable and a method?
#     - a local variable is the assignment of a value or simply an object, while a method contains code that *does* something. You can think of it like a local variable being a noun and a method being a verb.
# - How do you run a ruby program from the command line?
#     - To run a ruby program from the command line you simply type ``` ruby [FILENAME] ``` with the ``` rb ``` extension
# - How do you run an RSpec file from the command line?
#     - To run an RSpec file, you type ``` rspec [rspec FILENAME] ```. The code in this file must be written using rspec syntax.
# - What was confusing about this material? What made sense?
#     - I ran into a failure issue with the format address exercise and I couldn't figure out why. The ``` make_address ``` method was returning the correct output but the failure was saying it was getting 'nil'. I got hung up on triple checking the output, making sure it matched precisely with what was written in the exercise. It wasn't until I moved to the math methods exercise that I realized that the problem was that I had either ``` puts ``` or ``` print ``` in the ``` make_address ``` method. Once I removed it then the tests passed. Doi. Eventually everything made sense