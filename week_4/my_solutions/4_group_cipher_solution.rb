# U2.W4: Cipher Challenge


# I worked on this challenge with Jake Persing. 



# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.

#Samuel Davis
#Jake Persing

def north_korean_cipher(coded_message)
    input = coded_message.downcase.split("") # Check out this method in IRB to see how it works! Also refer to the ruby docs.
    decoded_sentence = []
    
    # defined an array "letters" from a to z
    letters = ("a".."z").to_a
    
    # defined a new array "rotated" that is a rotated version of letters
    rotated = letters.rotate(4)
    
    # declared an empty hash "cipher"
    cipher = {}
    
    # iterated through the array by the index and reassigned each hash key
    # to its corresponding shifted letter
    rotated.each_with_index {|v, i| cipher[v] = letters[i]}
    
    # If we changed it to 10 rotated letters, then it would be shifted 6 more letters to the right
    # rotated = letter.rotate(10)
    # the rest of the code would be the same
    
    p cipher
    
    # What is #each doing here? Each is iterating through each value
    # in the input so that it can compare it to each value in the cipher hash.
    input.each do |x|
        #found_match = false  # Why would this be assigned to false from the outset? Severs as a check so we know if we found
        # any matches in the if and elsif checks. What happens when it's true? We found a match!
        cipher.each_key do |y| # What is #each_key doing here? Iterating through each key in the hash "cipher".
            
            if x == y  # What is this comparing? It is comparing the input to the key in the cipher.
                #Where is it getting x? It gets x from input.each, x is the corresponding character
                #in input. Where is it getting y? y is from cipher.each_key, and represents the key element from the cipher hash. What are those variables really? Those variables are placeholders for characters to compare.
                puts "I am comparing x and y. X is #{x} and Y is #{y}."
                decoded_sentence << cipher[y]
                #found_match = true
                #break  # Why is it breaking here?
                elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #What the heck is this doing? This is comparing the input value to a variety of symbols, if x contains one of these symbols, push a space character into the decoded sentence.
                decoded_sentence << " "
                # found_match = true
                #break
                elsif (0..9).to_a.include?(x) # Try this out in IRB. What does   " (0..9).to_a "    do? This creates an array containing 10 numbers 0-9
                decoded_sentence<< x
                #found_match = true
                #break
                else
                decoded_sentence << x
            end
        end
        
    end
    decoded_sentence = decoded_sentence.join("")
    
    if decoded_sentence.match(/\d+/) #What is this matching? Look at Rubular for help.
        # this is a regular expression that looks for a match of an number of any length, and divides by 100
        decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 } #He's been known to exaggerate...
    end  
    return decoded_sentence # What is this returning? It would be returning a string, due to the .join.     
end

# Your Refactored Solution


# I wasn't quite sure what to change. This was a lot of new imformation and the fact that we got it working was awesome. I need to spend a lot of time reviewing these methods. Challenge 5 was a good review and the refactored solution made a lot of sense.


# Driver Code:
p north_korean_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver code and should print true
# Find out what Kim Jong Un is saying below and turn it into driver code as well. Driver Code statements should always return "true"
p north_korean_cipher("syv@tistpi$iex#xli*qswx*hipmgmsyw*erh*ryxvmxmsyw%jsshw^jvsq^syv#1000000#tvsjmxefpi$jevqw.")
p north_korean_cipher("syv%ryoiw#evi#liph^xskixliv@fc^kveti-jpezsvih@xsjjii.*hsr'x%xipp&xli#yw!")
p north_korean_cipher("mj^csy&qeoi^sri*qmwxeoi,%kir.*vm@csrk-kmp,&csy^ampp*fi&vitpegih*fc@hirrmw&vshqer.")
p north_korean_cipher("ribx^wxst:$wsyxl%osvie,$xlir$neter,#xlir%xli%asvph!")
p north_korean_cipher("ger^wsqifshc*nywx^kix^qi&10000*fekw@sj$gssp%vergl@hsvmxsw?")

# Reflection
#What parts of your strategy worked? What problems did you face?

# Jake and I went at this problem with kind of a hack and stab strategy. We just kept trying new things until it owrked. After quite awhile we got it working correclty. We faced a few problems with the conversion between the array and the hash, but everntually figured it out.

#What questions did you have while coding? What resources did you find to help you answer them?

# We had several questions pertaining to the array and hash implementation. We refered to stack over flow and the ruby docs to get a better understanding of how everything was working.

#What concepts are you having trouble with, or did you just figure something out? If so, what?

# This challenge was a bit harder for me compared to the 5th challenge. When I did that challenge, I already had done this challenge with Jake, so the ideas were fresh in my head and seemed to flow quite nicely.

#Did you learn any new skills or tricks?

# I learned several new things about arrays and hashes. I learned some new methods that I can utilzie when working with them. I also learned some other methods that we didn't end up using, like flatten.

#How confident are you with each of the learning objectives?

# Fairly confident. I need to review a few things still though.

#Which parts of the challenge did you enjoy?

# I enjoyed this challenge a lot. It was hard and I had a great time working with Jake.

#Which parts of the challenge did you find tedious?

# Nothing.