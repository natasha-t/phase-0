# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: ].
# Ryan Zell

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: an array of numbers
# Output: sum of numbers
# Steps to solve the problem.
# set base value "sum" = to 0
# set up each loop to iterate through numbers in array
# in the each loop, add sum to variable 'y', use += to keep track of sum


# 1. total initial solution
def total(array)
  sum = 0
  array.each do |y|
    sum += y
  end
  puts sum
end

# 3. total refactored solution

def total(array)
  array.inject(:+)
end

total([10,5,6])

# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: array of strings
# Output: single string
# Steps to solve the problem.
# take array of strings
# join together (no commas)
# capitalize the first letter, add period at end using '.', add spaces using " "


# 5. sentence_maker initial solution

def sentence_maker(array)
  array[0] = array[0].capitalize
  array.join(' ') + "."
end
sentence_maker(["hello", "how", "are", "you"])

# 6. sentence_maker refactored solution

def sentence_maker (array)
 array.join(' ').capitalize << "."
end

sentence_maker(["hello", "how", "are", "you"])
