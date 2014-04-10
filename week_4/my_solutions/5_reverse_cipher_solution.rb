# U2.W4: Refactor Cipher Solution


# I worked on this challenge by myself.


# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.
# Also make sure each step is necessary. If you don't think it's necessary
# Try implementing the code without it. 

def translate_to_cipher(sentence) #define the method, bring in one argument
    alphabet = ('a'..'z').to_a #declare an array named alphabet that has the letters a to z
    cipher = Hash[alphabet.zip(alphabet.rotate(4))] #This is a tricky one..but cipher is a new defined hash that's keys are made into arrays. Zip takes the number of arguments and makes them an array. The letters are rotated 4 spaces. Thus, the first sport [0] has a 'e' in it.
    spaces = ["@", "#", "$", "%", "^", "&", "*"] #Declares what characters equal spaces, so " ".
    
    original_sentence = sentence.downcase #A new sectence variable declared that is the argument brought in (sentence) and made lowercase.
    encoded_sentence = [] #A new declared array encoded_sentence.
    original_sentence.each_char do |element| #Iterate through each element in the sentence and perform some checks on them...
        if cipher.include?(element) #If the cipher includes the element..
            encoded_sentence << cipher[element] #Then push the element to the encoded sentence.
            elsif element == ' ' #If the element is a space
                # Push a random variable in the spaces array to the encoded sentence.
                encoded_sentence << spaces.sample
      # If the first two checks fail, then do this..
      else
      encoded_sentence << element # Push the element to the encoded sentence.
      end
     end
    
    return encoded_sentence.join # Returns the encoded sentence as a string.
end 


# Questions:
# 1. What is the .to_a method doing? The .to_a method makes whatever it is trying to change an array.
# 2. How does the rotate method work? What does it work on? The rotate method alters the order of an array by the declared number. For example, if I rotated an array of 'a'..'z' by 4, then the character in the [0] spot would be an 'e'. This method works on arrays.
# 3. What is `each_char` doing? It passes each character in the str, array, etc to the given block.
# 4. What does `sample` do? Sample chooses a random variable in the array.
# 5. Are there any other methods you want to understand better? I would really like to understand .zip a bit better. I will have to do some extra work on that.
# 6. Does this code look better or worse than your refactored solution
#    of the original cipher code? What's better? What's worse? It def looks a lot simplier. Jake and I spent quite awhile trying to get it to work the first time, but we finally did. It was exciting.
# 7. Is this good code? What makes it good? What makes it bad? The code is good. It is simple and concise. I don't really see any problems with it.


# 1. DRIVER TESTS GO BELOW THIS LINE
# Does this return the same thing every time?
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")





# 5. Reflection 
#What parts of your strategy worked? What problems did you face?

# Everything really worked with this challenge. Everything was flowing well from my pairing session earlier and that really helped to understand this challenge. I faced a few problems of not being completely sure what the method was doing, but I did some research on the ruby docs.

#What questions did you have while coding? What resources did you find to help you answer them?

# I refered to the ruby docs a few times as well I though about what I learned from my paring session with Jake earlier.

#What concepts are you having trouble with, or did you just figure something out? If so, what?

# I am not really having any problems with this particular material persay, but just need practice with everything really.

#Did you learn any new skills or tricks?

# I got a better understading with a few of the methods and I saw an example of how to really cut down on the code and make it more concise.

#How confident are you with each of the learning objectives?

# I am confident with this challenge.

#Which parts of the challenge did you enjoy?

# I really enjoyed going to the docs and doing a bit of research. It was cool to really feel like I am understanding.

#Which parts of the challenge did you find tedious?

# Nothing.
