# U2.W6: Refactoring for Code Readability


# I worked on this challenge by myself.


# Original Solution

# My original solution. It is very long with a lot of if statements.

=begin
class CreditCard
 
        def initialize (number)
                credit_card_len = number.to_s.length
                raise ArgumentError.new("Your Credit Card number it's incorrect.") if (credit_card_len > 16 || credit_card_len < 16)
                @number = number
        end
 
        def check_card
 
                number_arr = @number.to_s.split(//).map { |x| x.to_i }
 
                step_1 = []
                i = number_arr.length - 1
 
                while i >= 0
                    if i % 2 == 0
                            dbl_dgt = (number_arr[i] * 2)
                            if dbl_dgt >= 10
                                    dbl_dgt = dbl_dgt.to_s.split(//).map { |x| x.to_i }
                                    step_1 << dbl_dgt.pop
                                    step_1 << dbl_dgt.pop
                            else
                                step_1 << dbl_dgt
                            end
                    else
                            step_1 <<  number_arr[i]
                    end
                    i -= 1
                end
 
                sum = step_1.inject {|sum, x| sum += x}
 
                if sum % 10 == 0
                    return true
                else
                    return false
                end
 
        end
 end
=end


# Refactored Solution

# After doing some more research and checking out some of my peers solutions, I realized that this challenge really could have been done in just a few lines of code. Pretty neat.

class CreditCard
        def initialize(number) # still bringing in 1 argument for the number
                raise ArgumentError.new("You must enter a valid credit card number.") unless number.to_s.length == 16 # checking to ensure that the card number's length is 16
                @number = number # create an instance variable number in order to utilize the number throughout the class
        end
    
        def check_card # 0 arguments
                # This line isn't as complicated as it looks. First it turns the number into a string and reverses it since we want to start doubling from the second to the right (the 14th index from 0 to 15). The first map enumerable takes the strings and puts them into an array in the order that they are in. The second map has a conditional. It says "is the index an even number? If so, just take the number. If it is odd then, double it. So now we have our second array with the correct numbers in it. Now join all of the numbers together to a string and map it again so that every spot is taken by a single digit integer. Reduce then adds all of the integers together. The last part of this beast says if after modding by 10, is it 0? That simply means, is there a reminder? If the answer is no, then it is a valid number.
                
                @number.to_s.reverse.split(//).map(&:to_i).map.with_index { |number,index| index.even? ? number : number * 2 }.join.split(//).map(&:to_i).reduce(:+).%(10).zero?
        end
end

# DRIVER TESTS GO BELOW THIS LINE

def assert
        raise "Assertion failed!" unless yield
end

assert { CreditCard.is_a? Class }
assert { CreditCard.instance_method(:initialize).arity == 1 }

card = CreditCard.new(1234567891011121)
assert { card.check_card == false }

card = CreditCard.new(4408041234567893)
assert { card.check_card == true }

card = CreditCard.new(4408041234567892)
assert { card.check_card == false }

# Reflection
#What parts of your strategy worked? What problems did you face?

# This was an amazing challenge. It really proved the notation that many lines of code can be done in just a few lines. Really cool. I didn't face really any problems.

#What questions did you have while coding? What resources did you find to help you answer them?

# I didn't really have too many. I didn't know what reduce did. I found out that it is a simplier way of inject in a way from the docs.

#What concepts are you having trouble with, or did you just figure something out? If so, what?

# None really.

#Did you learn any new skills or tricks?

# Tons. This made me realize that you can really put many methods together to do things in just a few lines. Really saves space and makes the code more concise.

#How confident are you with each of the Learning Competencies?

# Pretty good I believe.

#Which parts of the challenge did you enjoy?

# Everything.

#Which parts of the challenge did you find tedious?

# Nothing. 