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