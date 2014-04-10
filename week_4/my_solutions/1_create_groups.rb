# U2.W4: Title here


# I worked on this challenge by myself.

# 2. Pseudocode

# Input: An array of the names of the cohort.
# Output: The goal of this challenge is to return some groups for the cohorts. There should be groups of 4.
# Steps: First, I need ot shuffle all of the people in the array, to ensure that the groups are random. Then, I need to start popping off names out the array and into the groups. Then return the groups. Need to do this 3 times since there are 3 phases.

# 3. Initial Solution

def create_groups(names)
    acc_group = []
    shuf_names = names.shuffle
        
    while shuf_names > 4
        acc_group.push { shuf_names.pop(4) }
    end
        
    # Iterate through all of the names and add them to a group.
    shuf_names.each = { |x| acc_group[shuf_names.index(x)] << x }
    return acc_group
        
end


# 4. Refactored Solution
def create_groups(names)
    # There are 3 phases at DBC :)
    3.times do
        acc_group = []
        shuf_names = names.shuffle
        
        while shuf_names > 4
            acc_group.push { shuf_names.pop(4) }
        end
    
        # Iterate through all of the names and add them to a group.
        shuf_names.each = { |x| acc_group[shuf_names.index(x)] << x }
        return acc_group
    end
end



# 1. DRIVER TESTS GO BELOW THIS LINE

describe 'create_groups' do
    let(:names) { ["Adam Dziuk", "Adam Ryssdal", "Aki Suzuki", "Allison Wong", "Andra Lally", "Andrew McDonald", "Anup Pradhan",
        "CJ Jameson", "Christopher Aubuchon", "Clark Hinchcliff", "Devin A Johnson", "Dominick Oddo", "Dong Kevin Kang",
        "Eiko Seino", "Eoin McMillan", "Eric Wehrli", "Hunter T. Chapman", "Jacob Persing", "Jon Pabico", "Mary Huerster",
        "Parjam Davoody", "Samuel Davis", "Sebastian Belmar", "Shawn Seibert", "William Butler Bushyhead",
        "Yuzu Saijo", "christiane kammerl"] }
    
    
    it "is defined as a method" do
        defined?(unit_creation).should eq 'method'
    end
    
    it "requires a single argument" do
        method(:unit_creation).arity.should eq 1
    end
    
end





# 5. Reflection
#What parts of your strategy worked? What problems did you face?

# I did this challenge last actually. For some reason, I just didn't have any idea where to start. I knew what I needed to do. It was just confusing to me because of learning school with C and this with Ruby. This challenge more than others for some reason I just was lost for a start. After some time doing some research and trying to understand my peers thoughts, I was able to get something down.

#What questions did you have while coding? What resources did you find to help you answer them?

# I had some questions about some of the methods such as pop and <<. I refered to the ruby docs.

#What concepts are you having trouble with, or did you just figure something out? If so, what?

# This one was confusing, but I kind of figured it out. I was unsure how to write the driver code for this though.

#Did you learn any new skills or tricks?

# I learned how to add random things to a newly made array.

#How confident are you with each of the learning objectives?

# Semi. I will take a look at this again.

#Which parts of the challenge did you enjoy?

# I always enjoy the challenge. It is fun and exciting.

#Which parts of the challenge did you find tedious?

# Nothing. 

