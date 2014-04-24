# U2.W5: Class Warfare, Validate a Credit Card Number


# This challenge was worked on by Seba and Sam.

# 2. Pseudocode

# Input: Integer of hopefully 16 digits.
# Output: Boolean of true of false, that print true if our input is a valid CC number or false otherwise.
# Steps:
# Initialize the class with an integer and raise error if the length of the number is not 16 digits long
# Define a method check_card
# Iterate every digit of the number and double every other digit starting with the second to last digit.


# 3. Initial Solution

# Don't forget to check on intialization for a card length
# of exactly 16 digits
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

#card = CreditCard.new(1212121212121212)
#card.check_card

#card_a = CreditCard.new(4408041234567892)
#card_a.check_card

# 4. Refactored Solution

# def check_card
#   number_arr = @number.to_s.split(//).map { |x| x.to_i }



#   number_arr = @number.to_s.split(//).map { |x| x.to_i }

#   step_1 = []
#   i = number_arr.length - 1
#   while i >= 0
#     if i % 2 == 0
#       dbl_dgt = (number_arr[i] * 2)
#       if dbl_dgt >= 10
#         dbl_dgt = dbl_dgt.to_s.split(//).map { |x| x.to_i }
#         step_1 << dbl_dgt.pop
#         step_1 << dbl_dgt.pop
#       else
#         step_1 << dbl_dgt
#       end
#     else
#       step_1 <<  number_arr[i]
#     end
#     i -= 1
#   end
#     p step_1
#     p number_arr
# end


# 1. DRIVER TESTS GO BELOW THIS LINE
class CreditCard
	def initialize(number)
		raise ArgumentError.new("You must enter a valid credit card number.") unless number.to_s.length == 16
		@number = number
	end
    
	def check_card
		@number.to_s.reverse.split(//).map(&:to_i).map.with_index{|number,index| index.even? ? number : number * 2}.join.split(//).map(&:to_i).reduce(:+).%(10).zero?
	end
end

begin
    CreditCard.new(11111111111111112)
    rescue ArgumentError => err
    fail = err.message
end
p fail == "Your Credit Card number it's incorrect."

card = CreditCard.new(4408041234567893)
p card.check_card == true

card = CreditCard.new(4408041234567892)
p card.check_card == false
puts card.check_card


# 5. Reflection
#What parts of your strategy worked? What problems did you face?

# Seba and I wrote the code for our initial solution immediately after each step in the pseudo code. We found that this helped us formulate ideas. We tested each part of the code immediately after each section.

#What questions did you have while coding? What resources did you find to help you answer them?

# I had questions about the .each method and the use of the method .pop. Seba helped to explain these to me and I did some research on the internet as well.

#What concepts are you having trouble with, or did you just figure something out? If so, what?

# I really figureed out the .each method. 

# Did you learn any new skills or tricks?

# I got a better understanding of the method pop and how it can be used when coding.

#How confident are you with each of the learning objectives?

# This was a hard challenge but I know that I benefitted greatly from it.

# Which parts of the challenge did you enjoy?

# Everything. This is my third time working with Seba and I have enjoyed every time.

#Which parts of the challenge did you find tedious?

# Nothing.
