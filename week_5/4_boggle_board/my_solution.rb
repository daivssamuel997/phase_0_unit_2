# U2.W5: A Nested Array to Model a Boggle Board

# I worked on this challenge by myself.

boggle_board = [["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]]


# Part 1: Access multiple elements of a nested array

# Pseudocode
# 2_D or nested arrays have [rows][columns] and can be accessed by first
# calling the row and then the column. For example, the letter l is in [2][2] in the above board.

# Initial Solution
def create_word(board, *coords)
    coords.map { |coord| board[coord.first][coord.last]}.join("")
end

# Refactored Solution

# Didn't think this needed to be refactored. It is already concise and clean.

# DRIVER TESTS GO BELOW THIS LINE
puts create_word(boggle_board, [3,0], [0,2], [1,0], [2,2]) #=> "tail"
puts create_word(boggle_board, [1,3], [1,0], [2,1], [3,2]) #=> "tick"
puts create_word(boggle_board, [3,1]) #=> "a"

# Reflection 
# I will do the longer reflection at the bottom, but this was good practice working with 2-D arrays. Just have to remember that arrays start at the [0] position.
#-------------------------------------------------------------------------------

# Part 2: Write a method that takes a row number and returns all the elements in the row.  

# Pseudocode
# 1. Need to define a method.
# 2. Have the method take in a single parameter for the row number.
# 3. Return the entire row of the boggle board.

# Initial Solution
=begin
def get_row(row)
    boggle_board = [["b", "r", "a", "e"],
                    ["i", "o", "d", "t"],
                    ["e", "c", "l", "r"],
                    ["t", "a", "k", "e"]]
    raise ArgumentError.new("You can't have a negative row!") if row < 0
    boggle_board[row]
end
=end

# Refactored Solution
def get_row(board, row)
    raise ArgumentError.new("You can't have a negative row!") if row < 0
    board[row]
end

# DRIVER TESTS GO BELOW THIS LINE
p get_row(boggle_board, 1) == %w{i o d t}

begin
    get_row(boggle_board, -5)
    rescue ArgumentError => error
    failed = error.message
    end
p failed = "You can't have a negative row!"

# Reflection 
# This part of the challenge was a bit trickier but was great practice in the end.
# I got more practice with the argument errors and this to me was extremely cool.

#-------------------------------------------------------------------------------

# Part 3: Now write a method that takes a column number and returns all the elements in the column.

# Pseudocode
# 1. Define a method with one parameter.
# 2. Return the column of the boggle board.

# Initial Solution
def get_col(board, column)
    raise ArgumentError.new("You can't have a negative column!") if column < 0
    board.map { |x| x[column] }
end

# Refactored Solution
# I do not think that I need to change anything. It is clear and concise.

# DRIVER TESTS GO BELOW THIS LINE
puts get_col(boggle_board, 1)
p get_col(boggle_board, 1) == %w{r o c a}

begin
    get_col(boggle_board, -5)
    rescue ArgumentError => error
    failed = error.message
end
p failed = "You can't have a negative col!"


# Reflection
#What parts of your strategy worked? What problems did you face?

# I did several of the tests in a trial and error based manner. I got a few errors but eventually was able to catch them with my driver code.

#What questions did you have while coding? What resources did you find to help you answer them?

# This was the first challenge in awhile that we didn't use classes. So it was good practice to have to go back to simply writing methods and ensuring that the variables that we used in each method were defined.

#What concepts are you having trouble with, or did you just figure something out? If so, what?

# I am not really having trouble with any of these concepts.

#Did you learn any new skills or tricks?

# I got more practice with the .map method. It was awesome to see it work so well.

#How confident are you with each of the learning objectives?

# I am pretty confident.

#Which parts of the challenge did you enjoy?

# I really enjoyed writing the driver code for this challenge.

#Which parts of the challenge did you find tedious?

# Nothing. 