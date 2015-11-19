# U2.W6: Testing Assert Statements

# I worked on this challenge [by myself, with: ].


# 2. Review the simple assert statement

# def assert
#   raise "Assertion failed!" unless yield
# end

# name = "bettysue"
# assert { name == "bettysue" }
# assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs
# The message "Assertion failed" was raised because the code block on line 14 evaluates to false. If I comment out line 14, then run the test, nothing is outputted as the assert method is yielding and exits the method until the assert method is used again.


# 3. Copy your selected challenge here

class CreditCard

  attr_reader :number

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

# credit_card = CreditCard.new(4408041234567906)

# p credit_card.check_card



# 4. Convert your driver test code from that challenge into Assert Statements

def assert
  raise "Assertion failed" unless yield
end


number = 44080412345678932
credit_card = CreditCard.new(number)

number_2 = 1111111111111111
credit_card_2 = CreditCard.new(number_2)


assert { credit_card.check_card == true }
assert {credit_card_2.check_card == false }



######################################################



# 5. Reflection
=begin
What concepts did you review or learn in this challenge?
What is still confusing to you about Ruby?
What are you going to study to get more prepared for Phase 1?
=end