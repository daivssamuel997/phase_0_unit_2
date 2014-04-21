# U2.W6: Drawer Debugger


# I worked on this challenge by myself.


# 2. Original Code

# Errors I got..let's do this!

# 1. The first error I got was "unexpected end-of-input, expecting key word_end.
# This error simply means that the program was thrown off because there was no end statement closing something that needed to be closed. So something new was defined while the program was still in the other thing. The error in this case is with the class itself. We never close the first class and then go and start a new one. That is a no no.

# 2. The next error is an arguments error. Basically, this method was called and sent an argument with it. For example in this case, "silverware_drawer.add_item(knife1)" is called, but the actually method never brings in the argument. So all we need to do is to add the argumetn "item" in the mehtod and that should take care of that issue.

# 3. The third error is that we call the method 'clean_silverware', but it doesn't exist. So we need to make a method like that to fix the problem. The method gets 0 arguments.

# 4. The fourth error is that when we call the dump method, we aren't actually clearing the silverware from the drawer. By saying @contents.clear, I am actually removing item from the array. This gives us the correct answer to the next "view_contents".

# 5. The fifth error is that we are trying to eat with something that doesn't exist, the fork. We removed the fork in an earlier line. So we need to put another fork into the drawer in order to remove it. So after we create another fork object and add it to the drawer, everything should work swell.

# Bonus: This was a really simple error. The methods just didn't match. What I mean is that the code was fork.clean, when there is no .clean method defined. So I changed it to .clean_silverware, which already have defined. I also said only print this if .clean_silverware == true.

class Drawer

        attr_reader :contents

# Are there any more methods needed in this class?
# No.

        def initialize
                @contents = []
                @open = true
        end

        def open
                @open = true
        end

        def close
                @open = false
        end

        def add_item(item)
                @contents << item
        end

        def remove_item(item = @contents.pop) #what is `#pop` doing?
                @contents.delete(item)
        end

        def dump  # what should this method return? An empty drawer.
                # This line removes everything from the array.
                @contents.clear
                puts "Your drawer is empty."
        end

        def view_contents
                if @contents.empty? == true
                    puts "The drawer contains no silverware!"
                else
                puts "The drawer contains:"
                @contents.each {|silverware| puts "- " + silverware.type }
                end
        end
end

class Silverware
        attr_reader :type

# Are there any more methods needed in this class?
# Yes. 'clean_silverware'

        def initialize(type, clean = true)
                @type = type
                @clean = clean
        end

        def eat
                puts "eating with the #{type}"
                @clean = false
        end
    
        # our new method that sets the instance variable clean back to true.
        def clean_silverware
                @clean = true
        end

end

knife1 = Silverware.new("knife")

silverware_drawer = Drawer.new
silverware_drawer.add_item(knife1) 
silverware_drawer.add_item(Silverware.new("spoon"))
silverware_drawer.add_item(Silverware.new("fork")) 
silverware_drawer.view_contents

silverware_drawer.remove_item
silverware_drawer.view_contents
sharp_knife = Silverware.new("sharp_knife")


silverware_drawer.add_item(sharp_knife)

silverware_drawer.view_contents

removed_knife = silverware_drawer.remove_item(sharp_knife)
removed_knife.eat
removed_knife.clean_silverware 

silverware_drawer.view_contents
silverware_drawer.dump
silverware_drawer.view_contents #What should this return? This should return nothing because we dumped the drawer. Need to fix that..one sec. Now the drawer is empty.

fork = Silverware.new("fork")
silverware_drawer.add_item(fork)
fork = silverware_drawer.remove_item(fork) #add some puts statements to help you trace through the code...
# The problem here is that we can trying to remove something that was never in the drawer to begin with and then we call eat with it. We need to add it to the drawer first.
fork.eat

#BONUS SECTION
puts "The fork has been cleaned" if fork.clean_silverware == true

# more extra lines for practice
silverware_drawer.add_item(Silverware.new("knife"))
silverware_drawer.add_item(Silverware.new("spoon"))
silverware_drawer.add_item(Silverware.new("fork"))
silverware_drawer.view_contents

# DRIVER TESTS GO BELOW THIS LINE

def assert
    raise "Assertion failed!!" unless yield
end

assert { fork.is_a? Silverware }
assert { fork.clean_silverware == true }
assert { Silverware.is_a? Class }

# 5. Reflection
#What parts of your strategy worked? What problems did you face?

# I really didn't face any problems. I took each error one at a time and was able to figure everything out.

#What questions did you have while coding? What resources did you find to help you answer them?

#I refered to the docs once when I wanted to remove everything from the array, which I found that .clear does that.

#What concepts are you having trouble with, or did you just figure something out? If so, what?

# Nothing really with this challenge.

#Did you learn any new skills or tricks?

# .clear removes everything from an array. Handy I think.

#How confident are you with each of the Learning Competencies?

# Very.

#Which parts of the challenge did you enjoy?

# Everything. This was one of the most fun challenges yet.

#Which parts of the challenge did you find tedious?

# Nothing. 