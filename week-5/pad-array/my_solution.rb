# Pad an Array

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.


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