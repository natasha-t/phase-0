# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.
#

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? Number (Integer)
# What is the output? (i.e. What should the code return?) A number with commas inserted in the correct places
# What are the steps needed to solve the problem?
    # turn number into string
    # split it then reverse
    # insert comma after every 3rd digit
    # reverse back with commas
    # join


# 1. Initial Solution

# def separate_comma(number)
#   number_to_string = number.to_s
#   number_split = number_to_string.split(//)

#   number_reverse = number_split.reverse
#   number_reverse_length = number_reverse.length

#   counter = 1
#
#   number_reverse.each{ |number|
#     p number
#       while counter < number_reverse_length do
#         if counter % 3 == 0
#           number_reverse[counter] + ','
#         end
#         counter += 1
#       end
#   }

#   p number_reverse


# end

# separate_comma(78967456)

# 2. Refactored Solution

def separate_comma(number)
  number_to_string = number.to_s
  number_split = number_to_string.split(//)

  number_reverse = number_split.reverse
  number_reverse_length = number_reverse.length

  counter = 1
  new_array = []
  new_array << number_reverse[0]

  while counter < number_reverse_length do
      if counter % 3 != 0
          new_array << number_reverse[counter]
      elsif counter % 3 == 0
          new_array << number_reverse[counter] + ','
      end
          counter += 1
    end

  new_array
  new_array_normal = new_array.reverse
  p join_array = new_array_normal.join


end

separate_comma(4567876)

# Round 3

def separate_comma(number)
  number_to_string = number.to_s
  number_reverse = number_to_string.split(//).reverse
  number_reverse_length = number_reverse.length


  new_array = []
  new_array << number_reverse[0]
  counter = 1

  while counter < number_reverse_length do
      if counter % 3 != 0
          new_array << number_reverse[counter]
      elsif counter % 3 == 0
          new_array << number_reverse[counter] + ','
      end
          counter += 1
    end

  p new_array_normal = new_array.reverse.join


end

separate_comma(4567876)





# Reflection
# What was your process for breaking the problem down? What different approaches did you consider?
      # I immediately started on a piece of paper. What helped was finding a pattern for where commas are placed in numbers as they increase (every three numbers starting from the right). Writing the numbers out physically and inserting the commas helped me to visualize the problem. irb was also extremely useful because I could quickly test out methods to make sure I knew exactly what the output of those methods were before proceeding to the next part of the code.
# Was your pseudocode effective in helping you build a successful initial solution?
      # Yes, the combination of what I wrote on paper and as pseudo-code in the text editor helped to get started on an intiial solution.
# What Ruby method(s) did you use when refactoring your solution? What difficulties did you have implementing it/them? Did it/they significantly change the way your code works? If so, how?
      # I used to_s, split and reverse to set up the number as an array as needed for easy manipulation and comma insertion.
# How did you initially iterate through the data structure?
      # At first I iterated through the array using an .each method (with the while loop embedded within it); I had that for most of the time I was working through the challenge. But it turned out the .each method wasn't actually contributing anything to the solution but I didn't realize that until after I solved the challenge; the core of the program is in the while loop so I ended up taking out the .each method entirely and the code still worked.
# Do you feel your refactored solution is more readable than your initial solution? Why?
      # The final refactored solution is a few lines shorter and combines methods by stringing them together and removes the unnecessary .each loop. It also reads better in terms of the variable names. I made a variable for each method; but at the time it helped with keeping track of the subsequent steps in the program.