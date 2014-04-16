# U2.W5: Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input: an array of strings
# Output: returns one of the strings randomly in the array
# Steps:

# 1. We need to initialize the label and watch out to see if the label passed is an empty array.


# 3. Initial Solution

=begin
class Die
  def initialize(labels)
    if (labels.length > 0)
          @sides = labels.length
          @labels = labels
    else
        raise ArgumentError.new("The array passed is empty. Please try again.")
    end
  end

  def sides
    @sides
  end

  def roll
    @labels.sample
  end
end
=end


# 4. Refactored Solution

class Die
    def initialize(labels)
        @labels = labels
        raise ArgumentError.new("The array passed is empty. Please try again.") if labels.empty?
    end
    
    def sides
        @labels.length
    end
    
    def roll
        @labels.sample
    end
end

# This code is much simplier. If removes the else statement and even takes away an unneccessary variable from my first solution. By using the .length method on the labels variable itself, I take away actually making a second variable just for the length.


# 1. DRIVER TESTS GO BELOW THIS LINE

p Die.instance_method(:initialize).arity == 1 # arguments that initialize takes in should be 1
p Die.instance_method(:sides).arity == 0 # arguments that sides takes in should be 0
p Die.instance_method(:roll).arity == 0 # arguments that roll takes in should equal 0




# 5. Reflection
#What parts of your strategy worked? What problems did you face?

# I didn't really have any problems with this one. It all really just made sense.

#What questions did you have while coding? What resources did you find to help you answer them?

# Upon reviewing other solutions, I realized that I could do the same thing that I was doing in the initial solution but in much less code. This was awesome to see how the same thing can be done in half the code.

#What concepts are you having trouble with, or did you just figure something out? If so, what?

# Nothing really with this challenge.

#Did you learn any new skills or tricks?

# Just got a better understanding of instance methods and variables.

#How confident are you with each of the learning objectives?

# I am pretty confident.

#Which parts of the challenge did you enjoy?

# This was a fun challenge and I am ready for the next one.

#Which parts of the challenge did you find tedious?

# Nothing. 
