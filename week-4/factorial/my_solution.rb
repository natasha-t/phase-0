# Factorial

# I worked on this challenge [by myself, with: ].


# Your Solution Below

# !5 == 5 x 4 x 3 x 2 x 1 == 120

# (n-0) * (n-1)* (n-2) * (n-3) * (n-4)
# (n-0) * (n-i)

# take n
# subtract 0 first
# increment by 1
# stop at n-n = 0w

# i = numbers that increment by 1, that we're subtracting from n
# i = 0
# increment by 1 = i++
# n

def factorial(number)
i = 0
total = 1
  while i < number
    total = total * (number - i)
    i += 1
  end
    total
end

# (5-0) * (5-1) * (5-2) * (5-3) * (5-4)