# U2.W5: The Bakery Challenge (GPS 2.1)

# Your Names
# 1) Samuel Davis
# 2) Judy Jow

# This is the file you should end up editing.

def bakery_num(num_of_people, fav_food) # defining a method, bakery_num, parameters are number of people and favorite food
    my_list = {"pie" => 8, "cake" => 6, "cookie" => 1}  # defining a hash, my_list, with 8 pies, 6 cakes, 1 cookie
    # initializing pie, cake, and cookie quantities to 0, so we can increment them as we go through the code
    
    # if my_list[fav_food].nil?
    #   raise ArgumentError.new("You can't make that food")
    
    raise ArgumentError.new("You can't make that food") if my_list[fav_food].nil?
    
    pie_qty = 0
    cake_qty = 0
    cookie_qty = 0
    
    # this serves as a check to see if second parameter doesn't equal pie, cake or cookie
    has_fave = false
    
    #
    # my_list.each_key do |k| # each_key iterates through every key in the hash. current key is called k
    #     if k == fav_food # if k, the current key, is the favorite food, then...
    #     has_fave = true # set has_fave equal to true
    #     fav_food = k # set fav_food equals k
    #     end
    # end
    
    # if has_fave == false
    
    
    
    fav_food_qty = my_list.values_at(fav_food)[0] # fave_food is true. fave_food quantity = to the value corresponding key in the my list hash
    
    # if num_of_people % fav_food_qty == 0 # num of people modded by fav food = 0...
    #   num_of_food = num_of_people / fav_food_qty # num food = people/fave food qty
    #   return "You need to make #{num_of_food} #{fav_food}(s)." # return number of fave food
    
    if num_of_people % fav_food_qty != 0 # otherwise...
        while num_of_people > 0 # greater than 0..
            if num_of_people / my_list["pie"] > 0 # people/value pie value..so 8 > 0..
                pie_qty = num_of_people / my_list["pie"] # pie qty = people / value of pie
                num_of_people = num_of_people % my_list["pie"] # remaining people not being feed with pie
                elsif num_of_people / my_list["cake"] > 0 # same thing ... with cake
                cake_qty = num_of_people / my_list["cake"]
                num_of_people = num_of_people % my_list["cake"]
                else
                cookie_qty = num_of_people # anyone who isn't feed with cake or pie and give them cookies
                num_of_people = 0
            end
        end
        
        return "You need to make #{pie_qty} pie(s), #{cake_qty} cake(s), and #{cookie_qty} cookie(s)." # returns the number of food items calculated
    end
    
    num_of_food = num_of_people / fav_food_qty # num food = people/fave food qty
    return "You need to make #{num_of_food} #{fav_food}(s)." # return number of fave food
    
    
end # end of method


#-----------------------------------------------------------------------------------------------------
#DRIVER CODE-- DO NOT MODIFY ANYTHING BELOW THIS LINE (except in the section at the bottom)
# These are the tests to ensure it's working.
# These should all print true if the method is working properly.
p bakery_num(24, "cake") == "You need to make 4 cake(s)."
p bakery_num(41, "pie") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)."
p bakery_num(24, "cookie") == "You need to make 24 cookie(s)."
p bakery_num(4, "pie") == "You need to make 0 pie(s), 0 cake(s), and 4 cookie(s)."
p bakery_num(130, "pie") == "You need to make 16 pie(s), 0 cake(s), and 2 cookie(s)."
# p bakery_num(3, "apples") # this will raise an ArgumentError

# You SHOULD change this driver code. Why? Because it doesn't make sense.
p bakery_num(41, "cake") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)." # WHAAAAAT? I thought I said I wanted cake!

#Reflection
#What parts of your strategy worked? What problems did you face?

# Judy and I just went through each objective one and at time. I felt that this really helped to ensure that we both completely understood the material before moving on.

#What questions did you have while coding? What resources did you find to help you answer them?

# We had some questions pertaining to loops and other things, but Justin did a nice job of answering our questions.

#What concepts are you having trouble with, or did you just figure something out? If so, what?

# Nothing really with this challenge.

#Did you learn any new skills or tricks?

# Hashes seem to make a bit more sense to me. Still need some more practice on it though.

# How confident are you with each of the learning objectives?

# Getting there. Still have some more stuff to do though.

#Which parts of the challenge did you enjoy?

# Everything. I always enjoy the GPS sessions. I learn a lot.

# Which parts of the challenge did you find tedious?

# Nothing. 

