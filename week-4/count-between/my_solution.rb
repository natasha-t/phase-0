# Count Between

# I worked on this challenge [by myself, with: ].
# by myself

# count_between is a method with three arguments:
#   1. An array of integers
#   2. An integer lower bound
#   3. An integer upper bound
#
# It returns the number of integers in the array between the lower and upper bounds,
# including (potentially) those bounds.
#
# If +array+ is empty the method should return 0

# Your Solution Below

# find the number of integers in array that fall within the two bounds, including the bounds
# iterate through list_of_integers
  # determine if each fall between lower and upper bounds

def count_between(list_of_integers, lower_bound, upper_bound)
in_bounds = []

  list_of_integers.each do |num|
    if num >= lower_bound && num <= upper_bound
      in_bounds << num
    else
      "out of bounds"
    end
  end

  p in_bounds.length

end

count_between([-10,1,2], 0, 100)

