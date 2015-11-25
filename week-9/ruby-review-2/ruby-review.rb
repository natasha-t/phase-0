# Numbers to English Words


# I worked on this challenge [by myself].
# This challenge took me [#] hours.


# Pseudocode
=begin
Input: Number
Output: Number written out in English as a string

convert integer to string
assign 1 through 19 to English word string equivalents
  hash
  "1" => "one"
  "2" => "two"
  etc
  "19" => "nineteen"
assign 20 - 100 via tens
  "20" => "twenty"
  "30" => "thirty"
  etc
  "100" => "one hundred"

if integer length is 1,
  match integer_to_string to value in 1-19 hash
if integer length is > 1
  split number into array
  match first digit integer_to_string to value in 20 - 100 hash
  match second digit to value in 1 - 19 hash

=end

# Initial Solution

# def in_words(number)

#   str = number.to_s
#   one_to_nineteen = {
#     "1" => "one",
#     "2" => "two",
#     "3" => "three",
#     "4" => "four",
#     "5" => "five",
#     "6" => "six",
#     "7" => "seven",
#     "8" => "eight",
#     "9" => "nine",
#     "10" => "ten",
#     "11" => "eleven",
#     "12" => "twelve",
#     "13" => "thirteen",
#     "14" => "fourteen",
#     "15" => "fifteen",
#     "16" => "sixteen",
#     "17" => "seventeen",
#     "18" => "eighteen",
#     "19" => "nineteen"
#   }

#   twenty_to_hundred = {
#     "20" => "twenty",
#     "30" => "thirty",
#     "40" => "forty",
#     "50" => "fifty",
#     "60" => "sixty",
#     "70" => "seventy",
#     "80" => "eighty",
#     "90" => "ninety",
#     "100" => "one hundred"
#   }


#   if one_to_nineteen.has_key?(str)
#     p one_to_nineteen[str]
#   elsif str === "100"
#     p twenty_to_hundred[str]
#   else
#     str_split = str.split('')
#     reverse = str_split.reverse
#     number = reverse.pop
#     times_ten = number.to_i * 10
#     evaluate_number = reverse.push(times_ten.to_s).reverse

#     if twenty_to_hundred.has_key?(evaluate_number[0]) && evaluate_number[1] === "0"
#       p twenty_to_hundred[evaluate_number[0]]
#     elsif twenty_to_hundred.has_key?(evaluate_number[0]) && one_to_nineteen.has_key?(evaluate_number[1])
#       p twenty_to_hundred[evaluate_number[0]] + ' ' + one_to_nineteen[evaluate_number[1]]
#     end

#   end


# end

# in_words(98)

# Refactored Solution


def in_words(number)

  str = number.to_s
  in_words = {
    "1" => "one",
    "2" => "two",
    "3" => "three",
    "4" => "four",
    "5" => "five",
    "6" => "six",
    "7" => "seven",
    "8" => "eight",
    "9" => "nine",
    "10" => "ten",
    "11" => "eleven",
    "12" => "twelve",
    "13" => "thirteen",
    "14" => "fourteen",
    "15" => "fifteen",
    "16" => "sixteen",
    "17" => "seventeen",
    "18" => "eighteen",
    "19" => "nineteen",
    "20" => "twenty",
    "30" => "thirty",
    "40" => "forty",
    "50" => "fifty",
    "60" => "sixty",
    "70" => "seventy",
    "80" => "eighty",
    "90" => "ninety",
    "100" => "one hundred"
  }

  if str === "100"
    p in_words[str]
  elsif in_words.has_key?(str)
    p in_words[str]
  else
    str_split = str.split('')
    num = str_split.shift
    num_times_ten = num.to_i * 10
    evaluate_number = str_split.insert(0, num_times_ten.to_s)

    if in_words.has_key?(evaluate_number[0]) && evaluate_number[1] === "0"
      p in_words[evaluate_number[0]]
    else
      p in_words[evaluate_number[0]] + ' ' + in_words[evaluate_number[1]]
    end

  end


end

in_words(33)



# Reflection
# included in Ruby Review 1 file