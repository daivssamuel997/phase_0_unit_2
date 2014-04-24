# U2.W6: PezDispenser Class from User Stories


# I worked on this challenge [by myself, with: ].

# 1. Review the following user stories:
# - As a pez user, I'd like to be able to "create" a new pez dispenser with a group of flavors that 
#      represent pez so it's easy to start with a full pez dispenser.
# - As a pez user, I'd like to be able to easily count the number of pez remaining in a dispenser 
#      so I can know how many are left.
# - As a pez user, I'd like to be able to take a pez from the dispenser so I can eat it.
# - As a pez user, I'd like to be able to add a pez to the dispenser so I can save a flavor for later.
# - As a pez user, I'd like to be able to see all the flavors inside the dispenser so I know the order 
#      of the flavors coming up.


# 2. Pseudocode

# 1. First, need to declare a class for a pez dispenser. Well actually, it is already done for me.
# 2. Next, I need to make an initialize method that brings in an array for the flavors and makes it an instance variable. I will shuffle the flavors so that the candy is random.
# 3. Need to have a method that counts that total number of available pez in the dispenser. 'pez_count' returns an integer of the total pez.
# 4. 'see_all_pez' displays all of the available pez in the order that they will come out of the dispenser.
# 5. 'add_pez' brings in an argument of a new pez. It first checks to make sure that the dispenser is not full (15 is the max in my giant pez dispenser). After that, it adds the new pez to the top of the dispenser as it is the last one currently that will be eaten.
# 6. 'get_pez' removes the bottom pez from the dispenser and returns the element. Thus, when 'pez_count' returns the total pez, it will be one less.



# 3. Initial Solution

=begin
class PezDispenser
 
        # your code here!
        def initialize(*flavors)
                # create an instance variable, flatten it into an array, and shuffle to make it random.
                @flavors = flavors.flatten.shuffle
                # help me check that the argument is being brought in correctly.
                puts "the total flavors " + @flavors.flatten.length.to_s
        end
        
        def pez_count
                i = 0
                count = 0
                while i < @flavors.length do
                    count += 1
                    i += 1
                end
                return count
        end
        
        def see_all_pez
                puts "From the bottom of the dispenser to the top, you have one #{@flavors.join(", ")} in your Pez dispenser."
        end
        
        def add_pez(new_pez)
                raise ArgumentError.new("Your dispenser is full. Please try again after you have eaten some first.") if pez_count == 15
            
                @flavors.push(new_pez)
        end
        
        def get_pez
                @flavors.shift
        end
        
end
=end

# 4. Refactored Solution

# I made the method 'pez_count' much simplier. Cutting from many lines to only line.

class PezDispenser
    
        # your code here!
        def initialize(*flavors)
            # create an instance variable, flatten it into an array, and shuffle to make it random.
            @flavors = flavors.flatten.shuffle
        end
    
        def pez_count
                @flavors.length
        end
        
        def see_all_pez
                puts "From the bottom of the dispenser to the top, you have one #{@flavors.join(", ")} in your Pez dispenser."
        end
        
        def add_pez(new_pez)
                raise ArgumentError.new("Your dispenser is full. Please try again after you have eaten some first.") if pez_count == 15
            
                @flavors.push(new_pez)
        end
        
        def get_pez
                @flavors.shift
        end
        
end


# 1. DRIVER TESTS GO BELOW THIS LINE

flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry).shuffle
super_mario = PezDispenser.new(flavors)
puts "A new pez dispenser has been created. You have #{super_mario.pez_count} pez!"  
puts "Here's a look inside the dispenser:"  
puts super_mario.see_all_pez 
puts "Adding a purple pez."
super_mario.add_pez("purple")   # mmmmm, purple flavor
puts "Now you have #{super_mario.pez_count} pez!"
puts super_mario.see_all_pez
puts "Oh, you want one do you?"
puts "The pez flavor you got is: #{super_mario.get_pez}"
puts "Now you have #{super_mario.pez_count} pez!"

puts "The pez flavor you got is: #{super_mario.get_pez}"
puts "Now you have #{super_mario.pez_count} pez!"

def assert
        raise "Assertion failed!" unless yield
end

assert { super_mario.is_a? PezDispenser }
assert { PezDispenser.is_a? Class }


# 5. Reflection
#What parts of your strategy worked? What problems did you face?
# This challenge was very beneficial. It made me try many things and keep trying until I got it right. I faced a problem in the 'get_pez' method. I tried the method pop first, but realized that it was removing the pez closest to the top. Then I tried last and first, but realized that those methods weren't removing them, so I finally tried shift and it worked like a charm.

#What questions did you have while coding? What resources did you find to help you answer them?

# I spent quite awhile on the docs researching different methods that could help me do what I wanted to do. It was awesome.

#What concepts are you having trouble with, or did you just figure something out? If so, what?

# I am not really having trouble with any of these concepts.

#Did you learn any new skills or tricks?

# I learned really what pop does. Also, last, first, shift, and flatten.

#How confident are you with each of the learning objectives?

# I am pretty confident.

#Which parts of the challenge did you enjoy?

# I really enjoyed testing and trying new things over and over again. 

#Which parts of the challenge did you find tedious?

# Nothing.