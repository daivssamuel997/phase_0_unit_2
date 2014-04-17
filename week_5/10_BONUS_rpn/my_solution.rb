# U2.W5: Implement a Reverse Polish Notation Calculator


# I worked on this challenge by myself.

# 2. Pseudocode

# Input: String of numbers and operators to modify the numbers.
# Output: A single integer
# Steps:
# 1. Define the method.


# 3. Initial Solution

class RPNCalculator
  # Define your methods, here!
  def evaluate(input)
      
      array = []
      
      input.split(" ").each do |x|
        if x.is_a? Integer
            array << x
        elsif x == "+"
            array << array.pop.to_i + array.pop.to_i
        elsif x == "-"
            array << array.pop.to_i - array.pop.to_i
        elsif x == "*"
            array<< array.pop.to_i * array.pop.to_i
        else
        #raise ArgumentError.new("This is not valid input.")
        end
        end
        return array[0].to_i
    end
end



# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE
calc = RPNCalculator.new

calc.evaluate('1 2 +')   # => 3
calc.evaluate('2 5 *')   # => 10
calc.evaluate('50 20 -') # => 30

# The general rule is that 'A B op' is the same as 'A op B'
# i.e., 5 4 - is 5 - 4.
calc.evaluate('70 10 4 + 5 * -') # => 0

# 5. Reflection

#What parts of your strategy worked? What problems did you face?

# I was able to get some of it to work correctly, but wasn't able to get the complete right answer. I know that I was so close but I just couldn't get it. I would love an explanation to help me see where I was to go next.

#What questions did you have while coding? What resources did you find to help you answer them?

# I had problems manipulating the numbers to do the operators. I researched hashes and arrays. I think I made good use of the pop method.

#What concepts are you having trouble with, or did you just figure something out? If so, what?

# I have a hard time differentiating between hashes and arrays sometimes. How can you tell when it is a good idea to use one or the other?

#Did you learn any new skills or tricks?

# Not really. Just practiced with the pop method and if statements.

#How confident are you with each of the learning objectives?

# This was a hard challenge and I would love some help with it.

#Which parts of the challenge did you enjoy?

# I did enjoy the challenge though, even though I got a little stuck.

#Which parts of the challenge did you find tedious?

# Nothing. 
