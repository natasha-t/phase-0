# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: ]
# Chris Miklius


# I spent [] hours on this challenge.
# 1.75 hours

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.


# 0. Pseudocode

# What is the input? An array of numbers or strings
# What is the output? (i.e. What should the code return?) An array containing the value(s) that appears most frequently. If all occur with equal frequency, the same array is returned.
# What are the steps needed to solve the problem? Take the array and compare each element against each other. If the element is the same, then it has occured more than once. A Hash would be created to store the data for how much each value has appeared. Access the hash and create an array comprised of the most common entry or entries.

# 1. Initial Solution

def mode(array)

  data = Hash.new

  while array.length > 0
    frequency = array.count(array[0])

    data[array[0]] = frequency
    array.delete(array[0])
  end
#   p array
  data
  data.each do |k, v|
    array << k if v == data.values.max
  end
  p array
end



# 3. Refactored Solution

def mode(array)

  data = Hash.new

  while array.length > 0
    frequency = array.count(array[0])

    data[array[0]] = frequency
    array.delete(array[0])
  end

  data.each { |k, v| array << k if v == data.values.max }
  p array

end


# 4. Reflection
# Which data structure did you and your pair decide to implement and why?
    # we used a hash to categorize the data; the key/value pair was the number and the frequency.
# Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?
    # our pseudocode was pretty general, it encompassed the gist of the challenge
# What issues/successes did you run into when translating your pseudocode to code?
    # We ended up using methods that we didn't mention we would use in the pseudocode
# What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
  # while loop, count, delete, .each, .values, .max. We had to look up exactly what .values did