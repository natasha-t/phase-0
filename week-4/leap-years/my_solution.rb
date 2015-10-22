# Leap Years

# I worked on this challenge [by myself, with: ].


# Your Solution Below
def leap_year?(year)
  if year % 400 != 0 && year % 100 == 0
    p false
  elsif year % 4 == 0
    p true
  elsif year <= 3
    p false
  end
end