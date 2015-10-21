# I worked on this challenge [by myself, with: ].
# by myself

# Your Solution Below

# input = 3 non-negative numbers
# return true if the three numbers can form a triangle
# return false otherwise

# use Triangle Inequality Theorem -- sum of two sides added together is always greater than the third side
    # a + b > c
    # a + c > b
    # b + c > a
    # all three must be true to be valid triangle

    #


def valid_triangle?(a, b, c)
  if (a + b > c) && (a + c > b) && (b + c > a)
    true
  else
    false
  end
end
