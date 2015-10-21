# Calculate a Grade

#accepts average value for class grade as parameter
  # give range of averages, associate with letter grade -->
      # average < 60 = F
      # 61 < average < 69 = D
      # 70 < average < 79 =  C
      # 80 < average < 90 = B
      # 91 < average < 101 = A

      # ^^^^ didn't work!! used .between? method instead

#returns letter grade as a string based on average

# I worked on this challenge [by myself, with: ].


# Your Solution Below

def get_grade(average)
  if average.between?(0,59)
    "F"
  elsif average.between?(60,69)
    "D"
  elsif average.between?(70,79)
    "C"
  elsif average.between?(80,89)
    "B"
  elsif average.between?(90,101)
    "A"
  end

end
