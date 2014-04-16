# U2.W5: Build a simple guessing game SOLO CHALLENGE


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input: the answer to the game
# Output: if solved? is called, should say whether or not the answer has been guessed or not. If guess is called, it should put a guess in.
# Steps:

# 1. Initialize the answer in the instance method.
# 2. Perfom checks to see if the guess was high or low. Return true or false
# 3. Return solved in the solved? method


# 3. Initial Solution

=begin
class GuessingGame
  def initialize(answer)
    # Your initialization code goes here
    @answer = answer
    @solved = false
  end
  
  def guess(guess)
    @guess = guess
    if @guess > @answer
        return :high
    elsif @guess < @answer
        return :low
    else
        return :correct
    end
  end
  
  def solved?
    if @guess != @answer
        return @solved
    else
      return true
    end
  end
  
end
=end

# 4. Refactored Solution

class GuessingGame
    def initialize(answer)
        # Your initialization code goes here
        @answer = answer
    end
    
    def guess(guess)
        @guess = guess
        if @guess > @answer
            return :high
            elsif @guess < @answer
            return :low
            else
            return :correct
        end
    end
    
    def solved?
        @guess != @answer ? false : true
    end
    
end

# Here I used a conditional expression to write what I did in the initial solution in one line. By doing this, I was able to remove the varable solved?  altogether.

# 1. DRIVER TESTS GO BELOW THIS LINE

p GuessingGame.instance_method(:initialize).arity == 1 # the number of arguments brought in should be one
p GuessingGame.instance_method(:guess).arity == 1 # the number of arguments should equal 1
p GuessingGame.instance_method(:solved?).arity == 0 # expects no arguments

# 5. Reflection
#What parts of your strategy worked? What problems did you face?

# My strategies of running the if statements to make the checks on the guess worked great, but I had trouble with the solved method. After some trial and error, I was able to get it working correctly though.

#What questions did you have while coding? What resources did you find to help you answer them?

# I had some questions about the conditional expressions, ruby docs helped a lot.

#What concepts are you having trouble with, or did you just figure something out? If so, what?

# Not really any with this challenge.

#Did you learn any new skills or tricks?

# I just got good practice with methods. This challenge increased my understanding of instance variables and just variables in general.

#How confident are you with each of the learning objectives?

# Pretty confident.

#Which parts of the challenge did you enjoy?

# All of it. This was a fun way to learn more ruby.

#Which parts of the challenge did you find tedious?

# Nothing. 
