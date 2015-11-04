# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  # put bingo in an array --> [b,i,n,g,o] - randomly select letter
  # use rand method on numbers 1-100
  # join elements together to generate letter + number (ex: B64)

# Check the called column for the number called.
  # target column (corresponding letter): indices [0]-[4]
  # target number: second-level indices [0]-[4]
  # B = 0; I = 1; N = 2 G = 3; 0 = 4
  # iterate through board array
    # for each array's index value that corresponds to the letter called, check for the number

# If the number is in the column, replace with an 'x'
  # replace that place in the board array with 'x'
  # go into board letter array, find matching number, replace with "x"

# Display a column to the console
  #fill in the outline here

# Display the board to the console (prettily)
  #fill in the outline here

# Initial Solution

# class BingoBoard

#   def initialize(board)
#     @bingo_board = board
#   end

#   def call
#     @call = []
#     @letters = ["B", "I", "N", "G", "O"]

#     @call.push(@letters.sample).push(rand(1..100))

#     p @call.join
#   end

#   def check
#     @board_letter = @letters.index(@call[0])
#     if @bingo_board[@board_letter].include?(@call[1])
#         @bingo_board[@board_letter].map { |x| x == @call[1] ? "X" : x}.flatten
#     else
#       false
#     end

#     @show_board = @bingo_board.each { |line| p line }

#   end
# end

# =========== Refactored Solution - Round 1 ==========
# set up tests

# class BingoBoard

#   def initialize(board)
#     @bingo_board = board
#   end

#   def call
#     # @call = []
#     @letters = ["B", "I", "N", "G", "O"]

#     # @call.push(@letters.sample).push(rand(1..100))

#     # p @call.join
#      p @call_test = ["O", 51]
#   end

#   def check
#     p @board_letter_test = @letters.index(@call_test[0])
#     # p @board_letter = @letters.index(@call[0])
#     @bingo_board.map { |row|
#         if row[@board_letter_test] == @call_test[1]
#           row[@board_letter_test] = "X"
#         else
#           false
#         end
#     }

#     @show_board = @bingo_board.each { |line| p line }

#   end

# end

# =========== Refactored Solution - Round 2 ===========

class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  def call
    @call = []
    @letters = ["B", "I", "N", "G", "O"]
    @call.push(@letters.sample).push(rand(1..100))
    p @call.join

  end

  def check
    @board_letter = @letters.index(@call[0])

    @bingo_board.map { |row| row[@board_letter] == @call[1] ? row[@board_letter] = "X" : false }

    format = '%-4s %-3s %-3s %-3s %s'
    puts format % ["B", "I", "N", "G", "O"]
    @show_board = @bingo_board.each { |line| p line }

  end

end


#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)

new_game.call
new_game.check

#Reflection
