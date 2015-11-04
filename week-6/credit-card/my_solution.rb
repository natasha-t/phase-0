# Pseudocode

# Input: 16 digit credit card number
# Output: True or false depending on whether it is a valid #, If it is not valid, it will raise an argument error.
# Steps:
# Initialize with card number
# Check number to make sure it is 16 digits, otherwise raise argument error
# Split number into an array
# Define method that starts from second to last digit and doubles every 2nd digit
# Define method that converts the array into a string, then splits it back into an array as individual characters
# Define method that sums each individual character (will also need to make sure they are integers)
# Check if the total is a multiple of 10, if yes, then return true. If not, false



# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

# class CreditCard

#   def initialize(credit_card_number)
#     @number = credit_card_number
#     if credit_card_number.to_s.length != 16
#       raise ArgumentError.new("Incorrect number of digits")
#     end
#   end

#   def split_number

#     @split_number = @number.to_s.split('')
#     @split_number.map! {|x| x.to_i}

#   end

#   def double_2_digit
#     index = -2
#     while index >= -16

#       @split_number[index] *= 2
#         index -= 2
#     end

#     @split_number
#   end

#   def separate_digits
#     @to_string = @split_number.map! {|x| x.to_s}
#     @join = @split_number.join
#     @split_2 =  @join.to_s.split('')
#     @split_2.map! { |x| x.to_i}

#   end

#   def check_card
#     @sum = 0
#     @split_2.map {|x| @sum += x}
#     @sum
#     @sum % 10 == 0 ? true : false

#   end
# end

#Refactored Solution

class CreditCard

  def initialize(credit_card_number)
    @number = credit_card_number
    if credit_card_number.to_s.length != 16
      raise ArgumentError.new("Incorrect number of digits")
    end
  end

  def split_number(current_number)

    @split_number = current_number.to_s.split('')
    @split_number.map! {|x| x.to_i}

  end

  def double_2_digit
    index = -2
    while index >= -16
      @split_number[index] *= 2
        index -= 2
    end

    @split_number
  end

  def separate_digits
    @join = @split_number.map! {|x| x.to_s}.join
    @split_2 = split_number(@join)

  end

  def check_card
    p split_number(@number)
    p double_2_digit
    p separate_digits
    @sum = 0
    @split_2.map {|x| @sum += x}
    @sum
    @sum % 10 == 0 ? true : false

  end
end

credit_card = CreditCard.new(4408041234567906)

p credit_card.check_card


# Reflection

# What was the most difficult part of this challenge for you and your pair?
  # When we ran our initial solution into rspec we had 3 failures, despite our solution working in coderpad when each method was called on the card class. It took us a bit of time to realize that rspec was only checking the check_card method, so we had to place all the other methods into the check_card method and only call check_card.
# What new methods did you find to help you when you refactored?
  # We didn't use any new methods, but we combined methods to shorten/condense the code, allowing for multiple methods to be called at once. We also called one method (split_number) in another method (separate_digits).
# What concepts or learnings were you able to solidify in this challenge?
  # It was made more clear how to write multiple methods in a class that relate to each other/use each other's data.

