# Smallest Integer

# I worked on this challenge [by myself, with: ].
# by myself

# smallest_integer is a method that takes an array of integers as its input
# and returns the smallest integer in the array
#
# +list_of_nums+ is an array of integers
# smallest_integer(list_of_nums) should return the smallest integer in +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# identify smallest integer from array



# Your Solution Below

def smallest_integer(list_of_nums)
   if list_of_nums.empty?
      return nil
  end
  list_of_nums.each do |num|
    if num == list_of_nums.min
      return num
    end
  end
end

