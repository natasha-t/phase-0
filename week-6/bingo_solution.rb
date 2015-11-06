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

# Display the board to the console (prettily)

# Legal board
  # define B-0 ranges, put into arrays
  # use zip to combine arrays
  #


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

    # format = '%-4s %-3s %-3s %-3s %s'
    # puts format % ["B", "I", "N", "G", "O"]

    # show_board = @bingo_board.each {|line| p line}
  end

end

def make_legal_board

    b = (1..15).to_a
    i = (16..30).to_a
    n = (31..45).to_a
    g = (46..60).to_a
    o = (61..75).to_a

    bingo_board = b.zip(i,n,g,o)

    shuffled = bingo_board.shuffle

    format = '%-4s %-3s %-3s %-3s %s'
    puts format % ["B", "I", "N", "G", "O"]
    shuffled_rows = shuffled[0..4]
    shuffled_rows.each {|line| p line}

  end

#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE

# board = [[47, 44, 71, 8, 88],
#         [22, 69, 75, 65, 73],
#         [83, 85, 97, 89, 57],
#         [25, 31, 96, 68, 51],
#         [75, 70, 54, 80, 83]]
board = make_legal_board
new_game = BingoBoard.new(board)
new_game.call
new_game.check

#Reflection
=begin
How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
  Since this challenge simulates a real game, pseudocoding was pretty easy/straightforward because it was essentially the steps for playing Bingo. Pseudocoding became difficult when describing how to access the corresponding letter and number in the board array.
What are the benefits of using a class for this challenge?
  The methods call and check are associated with a bingo board, so it makes sense to group them together within a bingo board class.
How can you access coordinates in a nested array?
  To access data in a single array, you use the bracket notation and the item's index number, like array[0]. If array[0] is an array itself, you'd use array[0] to access the entire array, then append the index value of the nested array item you want to access i.e. array[0][1].
What methods did you use to access and modify the array?
  I used map to search each array for the number called and place an "X" if the number is present. I used .map over .each because .each does not produce an output that can be saved.
Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?
  I didn't really use any new methods for this challenge
How did you determine what should be an instance variable versus a local variable?
  Instance variables were used within the bingoboard class. Local variables were used outside of the class
What do you feel is most improved in your refactored solution?
  Well initially I was incorrectly locating the letter/number on the bingo board, it was as if the first array in board was B, second array was I, so forth as opposed to the column layout, so my refactored solution targets the letter/number correctly.
=end