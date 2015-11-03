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
  # ex: board[0][3] = B71
  # letter should correspond with board index value

# If the number is in the column, replace with an 'x'
  # replace that place in the board array with 'x'
  # go into board letter array, find matching number, replace with "x"

# Display a column to the console
  #fill in the outline here

# Display the board to the console (prettily)
  #fill in the outline here

# Initial Solution

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
    if @bingo_board[@board_letter].include?(@call[1])
        @bingo_board[@board_letter].map { |x| x == @call[1] ? "X" : x}.flatten
    else
      false
    end

    @show_board = @bingo_board.each { |line| p line }

  end
end

# Refactored Solution

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
    if @bingo_board[@board_letter].include?(@call[1])
        @bingo_board[@board_letter].map { |x| x == @call[1] ? "X" : x}.flatten
    else
      false
    end

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
