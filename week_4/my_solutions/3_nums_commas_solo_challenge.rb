# U2.W4: Title here


# I worked on this challenge by myself.

# 2. Pseudocode

# Input: Bring in a number and do some magic on it.
# Output: Need to return the number with the commas in the correct spaces.
# Steps: First if the number is nil, return nil. Then if the number.length < 3, return it. Otherwise, iterate through it and use the insert method to add in commas.


# 3. Initial Solution
def separate_comma(number)
    
        if number == nil
            return nil
        end
        
        arr = number.to_s.reverse.split(//)
        
        
        if arr.length < 7
            j = 0
            
        elsif arr.length % 2 == 0
            j = 1
        else
            j = 2
        end
        
        
        
        if arr.length < 4
            return array.join.reverse.to_s
            
        else
            i  = 3
            
            while i < arr.length + j do
                array.insert(i, ',')
                i += 4
            end
            end
            
            return  array.join.reverse.to_s
        
end
        
        
        
# 4. Refactored Solution
        
# My initial solution worked on the first time. I basically iterate through the newly formed array. Make it a string and join it together at the end after already inserting a comma every 3 digits.
        
        
        
        
        
# 1. DRIVER TESTS GO BELOW THIS LINE
        
def random_num(min, max)
    rand(max - min + 1) + min
end
    
describe 'separate_comma' do
    it "is defined as a method" do
        defined?(separate_comma).should eq 'method'
    end
        
    it "requires an argument" do
        method(:separate_comma).arity.should eq 1
    end
        
    it "returns the correct number" do
        separate_comma(1000).should eq "1,000"
    end
        
    it "returns the correct number" do
        separate_comma(100).should eq "100"
    end
        
    it "returns the correct number" do
        separate_comma(1000000).should eq "1,000,000"
    end
        
    it "returns the correct number" do
        separate_comma(nil).should eq nil
    end
        
    it "returns no comma, when the integer is smaller than 1000" do
        separate_comma(random_num(0, 999)).should match /^\d{1,3}$/
    end
    
    it "returns one comma, when the integer is between 1000 and 999999" do
        separate_comma(random_num(1000, 999999)).should match /^\d{1,3},\d{3}$/
    end
        
    it "returns two commas, when the integer is between 1000000 and 999999999" do
        separate_comma(random_num(1000000, 999999999)).should match /^\d{1,3},\d{3},\d{3}$/
    end
end
        
        
        
# 5. Reflection
#What parts of your strategy worked? What problems did you face?

# It took a few tries to get some syntax things correct. I need to quite mixing up C and Ruby. Overall, I added some extra tests for the extra practice. My strategy of iterating through the number correclty worked like a charm. I faced a few problems of the reverse trick. I wasn't reversing it at first, so I wasn't getting the commas put in at the correct spots.

#What questions did you have while coding? What resources did you find to help you answer them?

# A lot. Like why would it make sense to reverse the code here? After pondering it, I realized why. :) and none, solo challenge.

#What concepts are you having trouble with, or did you just figure something out? If so, what?

# None really with iterating and this kind of thinking. It makes sense for the most part.

#Did you learn any new skills or tricks?

# I got some more practice iterating through arrays and strings.

#How confident are you with each of the learning objectives?

# Pretty confident with these objectives.

#Which parts of the challenge did you enjoy?

# Everything honestly. It was fun.

#Which parts of the challenge did you find tedious?

# Nothing. 
        
        
        
        



