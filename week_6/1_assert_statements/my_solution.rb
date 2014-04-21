# U2.W6: Testing Assert Statements

# I worked on this challenge [by myself, with: ].


# 2. Review the simple assert statement

=begin
def assert
  raise "Assertion failed!" unless yield
end

name = "bettysue"
assert { name == "bettysue" }
assert { name == "billybob" }
=end

# 2. Pseudocode what happens when the code above runs

# 1. First, the method "assert" is defined
# 2. Then it declares the variable name as "bettysue"
# 3. assert { name == "bettysue" } says if name is not "bettysue"..then
# raise "Assertion failed!". If it is true, in this case it prints nil.
# 4. Then checks if name is "billybob", which is false. So the method assert
# raises an "Assertion failed!"

# In short, the assert statement that failed was "assert { name == "billybob" }
# because it is checking to see whether the satement is true. Since it is false,
# it triggers the "raise... unless yield" line in the method.


# 3. Copy your selected challenge here

# My favorite challenge was the validate credit card challenge because Seba
# and I did a great job working as a team to tackle this tough challenge.

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

# Driver code

=begin
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
=end

# 4. Convert your driver test code from that challenge into Assert Statements

def assert
    raise "Assertion failed!!!!!!" unless yield
end

card = CreditCard.new(4408041234567893)
#puts card.check_card
assert { card.check_card == true }

card = CreditCard.new(4408041234567892)
assert { card.check_card == false }

# 5. Reflection

#What parts of your strategy worked? What problems did you face?

# I faced no problems during this exercise. I thought it was very simple but
# useful at the same time. I learned some useful things. Everything worked for
# me. I just took each step in the directions one at a time.

#What questions did you have while coding? What resources did you find to help you answer them?

# I was confused at first with what yield was, so I watched a video on youtube
# about it as well as looked at the docs. It still doesn't make perfect sense to
# to me, but it is much clearer than before and I know it will be very useful.

#What concepts are you having trouble with, or did you just figure something out? If so, what?

# I am not having any trouble with any of the concepts.

#Did you learn any new skills or tricks?

# Was introduced to yield and assert. It is pretty cool.

#How confident are you with each of the Learning Competencies?

# Mostly confident.

#Which parts of the challenge did you enjoy?

# Everything.

#Which parts of the challenge did you find tedious?

# Nothing.
