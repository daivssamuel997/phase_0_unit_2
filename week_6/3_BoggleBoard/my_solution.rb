# U2.W6: Create a BoggleBoard Class


# I worked on this challenge by myself.


# 2. Pseudocode
# 1. There is alredy a new object of BoggleBoard called boggle_board that has been created, so I first need ot initialize it in the class BoggleBoard. That is our first step.
# 2. Now I need to make the 'create_word method. This method will need to bring in the coordinates and combine the letters at each spot in the 2-D array together to form a word..hopefully a word lol.
# 3. The next method is the 'get_row' method. This method takes in a row number and returns all of the elements in the row. Pretty cool.
# 4. 'get_col' works very similar to 'get_row', but in this case, I can't just return the grid[row], I need to use an enumerable and map the grid. I will return the desired output in an array.
# 5. 'get_diagonal' method is the coolest of them all. It takes in one argument that represents the

# 3. Initial Solution
=begin
class BoggleBoard
 
        #your code here
        def initialize(two_d_array)
            @grid = two_d_array #initialized the instance variable grid to the dice_grid that was brought in when we created the new object.
        end
        
        def create_word(*coords)
            coords.map { |coord| @grid[coord.first][coord.last]}.join("")
        end
        
        def get_row(row)
            @grid[row].join
        end
        
        def get_col(column)
            @grid.map { |x| x[column] }
        end
        
        def get_diagonal(row)
            row.collect { |x| @grid[x][x] }
        end
end
 
 
dice_grid = [["b", "r", "a", "e"],
             ["i", "o", "d", "t"],
             ["e", "c", "l", "r"],
             ["t", "a", "k", "e"]]
 
boggle_board = BoggleBoard.new(dice_grid)
 
=end

# 4. Refactored Solution

# I changed some of the variable names to make them more clear to understand. Everything else is okay I believe. The methods are all done in one line and are simple and get the job done. 

class BoggleBoard
    
    #your code here
    def initialize(two_d_array)
        @grid = two_d_array #initialized the instance variable grid to the dice_grid that was brought in when we created the new object.
    end
    
    def create_word(*coords)
        coords.map { |coord| @grid[coord.first][coord.last]}.join("")
    end
    
    def get_row(row)
        @grid[row].join
    end
    
    def get_col(column)
        @grid.map { |grid_row| grid_row[column] }
    end
    
    def get_diagonal(row)
        row.collect { |element| @grid[element][element] }
    end
end


dice_grid = [["b", "r", "a", "e"],
["i", "o", "d", "t"],
["e", "c", "l", "r"],
["t", "a", "k", "e"]]

boggle_board = BoggleBoard.new(dice_grid)


# 1. DRIVER TESTS GO BELOW THIS LINE

def assert
        raise "Assertion failed!" unless yield
end

# create driver test code to retrieve a value at a coordinate here:

puts boggle_board.create_word([3,1]) #=> "a"
assert { boggle_board.create_word([3,1]) == "a" }

# implement tests for each of the methods here:

# For the 'initialize' method, tests to ensure that it receives only one argument.

assert {BoggleBoard.instance_method(:initialize).arity == 1}


# For the 'create_words' method. Put in a test to ensure that it is combining or joining the correct letters from the grid together. I am checking the object "boggle_board", so need to put that before the method i want to run.

puts boggle_board.create_word([3,0], [0,2], [1,0], [2,2]) #=> "tail"
assert { boggle_board.create_word([3,0], [0,2], [1,0], [2,2]) == "tail" }

puts boggle_board.create_word([1,3], [1,0], [2,1], [3,2]) #=> "tick"
assert { boggle_board.create_word([1,3], [1,0], [2,1], [3,2]) == "tick" }


# For the 'get_row' method, I need to test that when I give it a row to return, that it correctly returns the desired row.

puts boggle_board.get_row(0) #=> "brae"
assert { boggle_board.get_row(0) == 'brae' }
assert { boggle_board.get_row(1) == 'iodt' }
assert { boggle_board.get_row(2) == 'eclr' }
assert { boggle_board.get_row(3) == 'take' }


# For the 'get_col' method.

puts boggle_board.get_col(0)
assert { boggle_board.get_col(0) == ["b", "i", "e", "t"] }
assert { boggle_board.get_col(1) == ["r", "o", "c", "a"] }
assert { boggle_board.get_col(2) == ["a", "d", "l", "k"] }
assert { boggle_board.get_col(3) == ["e", "t", "r", "e"] }


# for the 'get_diagonal' method

puts boggle_board.get_diagonal(0..3)
assert { boggle_board.get_diagonal(0..3) == ["b", "o", "l", "e"] }

# 5. Reflection
#What parts of your strategy worked? What problems did you face?

# Well I really found that doing this exercise as the doc suggested really helped me understand. I did each method one at a time and performed some checks with some driver code to ensure that my program was working correctly. I didn't really face too many problems.

#What questions did you have while coding? What resources did you find to help you answer them?

# I had some questions about coding and I referred to the ruby docs a bit. I found that the collect method could help me get the diagonal method to work.

#What concepts are you having trouble with, or did you just figure something out? If so, what?

# I really am understanding everything really well.

#Did you learn any new skills or tricks?

# The collect method and I got some more practice with objects.

#How confident are you with each of the Learning Competencies?

# very.

#Which parts of the challenge did you enjoy?

# This was an overall super fun challenge.

#Which parts of the challenge did you find tedious?

# Nothing.