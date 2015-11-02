# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: initialize input is the answer (random number)
  # guess method takes a guess (integer) as argument
  # solved? method checks if last guess was correct or not
# Output: new GuessingGame class initiliazed with answer
  # guess outputs symbol :high, :low, or :correct for given guess
  # solved? outputs true or false depending on last guess
# Steps:
  # guess: set up conditionals for guess and answer comparisons
  # solved: retrieve last guess, store in variable
    # compare last guess to answer, if correct then output true, false otherwise


# Initial Solution

# class GuessingGame
#   def initialize(answer)
#     @answer = answer

#   end

#   def guess(guess)
#     @guess = guess
#     if @guess > @answer
#       p :high
#     elsif @guess < @answer
#       p :low
#     elsif @guess == @answer
#       p :correct
#     end
#   end

#   def solved?
#     if @guess == @answer
#       p true
#     else
#       p false
#     end
#   end


# end


# game = GuessingGame.new(10)
# game.guess(10)
# game.solved?

# Refactored Solution

class GuessingGame
  def initialize(answer)
    @answer = answer

  end

  def guess(guess)
    @guess = guess
    if @guess > @answer
      p :high
    elsif @guess < @answer
      p :low
    elsif @guess == @answer
      p :correct
    end


  end

  def solved?
   p check_answer = @guess == @answer ? true : false
  end


end

game = GuessingGame.new(10)
game.guess(10)
game.solved?


# Reflection