# U2.W5: Die Class 1: Numeric


# I worked on this challenge by myself.

# 2. Pseudocode

# Input: There are 6 sides to a die..the parameter taken in is sides.
# Output: Should return an integer 1 to the number of sides randomly.
# Steps:
# 1. The class is already set up for us. Thank you.
# 2. Need to finish the initialize method and set @sides to sides.
# 3. Need to raise an argument error though if sides is less than 1 or if it isn't an integer (going above and beyond :)).
# 4. In the instance method sides return sides
# 5. In the instance method roll, return a random roll 1 to sides.


# 3. Initial Solution

class Die
  def initialize(sides)
    # code goes here
    if ((sides.is_a? Integer) && (sides > 0))
        @sides = sides
    else
        raise ArgumentError.new("Please enter in a valid number.")
    end
  end
  
  def sides
    # code goes here
    @sides
  end
  
  def roll
    # code goes here
    rand(1..sides)
  end
end



# 4. Refactored Solution

# I am pretty satisfied with my first solution. I really like the extra check on line 23 to ensure that the parameter that is brought in is even an integer.




# 1. DRIVER TESTS GO BELOW THIS LINE

p Die.instance_method(:initialize).arity == 1 # arguments that initialize takes in should be 1
p Die.instance_method(:sides).arity == 0 # arguments that sides takes in should be 0
p Die.instance_method(:roll).arity == 0 # arguments that roll takes in should equal 0
p Die.new(3).sides == 3 # Compares whether or not we have the correct number of sides

# 5. Reflection
#What parts of your strategy worked? What problems did you face?

# I ran the spec first and did my best to write some driver code based on these results. I then wrote the pseudo code one line at a time and moved on after I got another part of te solution correct.

#What questions did you have while coding? What resources did you find to help you answer them?

# I just had some questions pertaining to some methods, like is_a?. I refered to the docs in order to get my answer.

#What concepts are you having trouble with, or did you just figure something out? If so, what?

# The hardest thing for me this entire time has been trying to figure out how to actually get started. What I mean is I have never really been sure how to test things properly. I actually think that I might have figured some new things out in that category and I am excited to move on farther.

#Did you learn any new skills or tricks?

# Just improved really with the terminal and testing code.

#How confident are you with each of the learning objectives?

# I am confident with this objective.

#Which parts of the challenge did you enjoy?

# Everything with this one.

#Which parts of the challenge did you find tedious?

# Nothing.