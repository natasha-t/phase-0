# Pad an Array

# I worked on this challenge [by myself, with: ]
# Shawn Spears
# I spent [] hours on this challenge.
# 45 minutes

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode
# What is the input?
# (array, integer, integer/string)

# What is the output? (i.e. What should the code return?
#  The output would be an array with the value appended to the array to meet the min_size requirement.

# What are the steps needed to solve the problem?
#  Take the array and compare to min_size
#  While array.length is less than the min_size append the value onto the array
# End while loop when array is min_size
# Return array
# End method


# 1. Initial Solution
# def pad!(array, min_size, value = nil) #destructive
# #   while array.length < min_size do
# #     array << value
# #   end
# #   array

# # end

# # our_array = [1,2,3,4]

# def pad(array, min_size, value = nil) #non-destructive
#   while array.length <= min_size do
#     array << value
#   end
#   p array
# end

# our_array = [1,2,3]
# pad(our_array, 5)

# Refactored Solution Round 1

# def pad!(array, min_size, value = nil) #destructive
#   while array.length < min_size do
#     array << value
#   end
#   array
# end

# def pad(array, min_size, value = nil) #non-destructive
#   new_array = [] + array
#   while new_array.length < min_size do
#     new_array << value
#   end
#   new_array
# end

# 3. Refactored Solution Round 2

def pad!(array, min_size, value = nil)
  array.fill(value, array.length, min_size-array.length)
end

our_array = [1,2,3]
pad!(our_array, 6, "cherry")
our_array

def pad(array, min_size, value = nil)
  new_array = [] + array
  p new_array.fill(value, array.length, min_size-array.length)

end

our_array = [1,2,3]
pad(our_array, 0)
our_array




# 4. Reflection
# Were you successful in breaking the problem down into small steps?
    # We were successful in breaking the problem down into steps which helped with writing the methods out.
# Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
    # Because our pseudocode was written well enough for both of us to understand exactly what the inputs and outputs were, writing the code out was pretty easy.
# Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
    # We didn't get any Ruby errors, just that our initial solution printed on element more than the min_size (based on our initial while loop condition) so we adjusted the condition accordingly and it worked from there.
# When you refactored, did you find any existing methods in Ruby to clean up your code?
    # We found a method called .fill which filled the array using three arguments: a value to fill the array with, a starting point and end point.
# How readable is your solution? Did you and your pair choose descriptive variable names?
    # I'd say our variable names are pretty straightforward and clear
# What is the difference between destructive and non-destructive methods in your own words?
    # Destructive methods alter the original input while non-destructive methods make a copy of the original input and returns a new output. You can see if methods are destructive or non-destructive by running an array, for instance, through a method, then checking to see if the original array stayed the same or changed.
