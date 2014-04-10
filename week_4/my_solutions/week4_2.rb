# U2.W4: Homework Cheater!


# I worked on this challenge with Eiko.

# 2. Pseudocode

# Input: title, topic, date, thesis_statment, pronoun in array form to the method
# Output: I need to do several things in this problem. I need to correctly pass all of the arguments into the method and utilize them to make up a nice paragraph. I also need to make sure to create an object and follow simple English rules when writing the paragraph.
# Steps: I need to bring in all of the arguments and use the title give to write it out. Then I can use the "topic" to create the object. Then write out the thesis while ensuring that I follow correct rules of English. Return the essay as a string.

# 3. Initial Solution

class Person
@topic = ''
@pronoun = ''
def initialize(topic, pronoun)
    this.topic = topic
    this.pronoun = pronoun
end
end


def essay_writer(title, topic, date, thesis_statment, pronoun)
    topic_person = Person.new(topic, pronoun)
    
    return topic_person.topic.to_s + " was an important person in " + date.to_s + ". He did a lot. I want to learn more about him." + thesis_statment.to_s + "Tokugawa's contribution is important."
end



# 4. Refactored Solution


def essay_writer(title, topic, date, thesis_statement, pronoun)
    if pronoun == "male"
        who = "He"
        whose = "His"
        whom = "Him"
        
        elsif pronoun == "female"
        who = "She"
        whose = "Her"
        whom = "Her"
        
        else
        who = "It"
        whose = "Its"
        whom = "Its"
    end
    
    return who + " was an important person in " + date.to_s + ". " + who + " did a lot. I want to learn more about him. " + thesis_statement + " " +  topic.to_s + "'s contribution is important."
    
end





# 1. DRIVER TESTS GO BELOW THIS LINE

describe 'essay_writer' do
    let(:array_1) {["The First Shogun", "Tokugawa Ieyasu", 1603, "His most important contribution to history is that he founded the Tokugawa period, a peaceful time that lasted over 200 years.", "male"]}
    
    
    it "is defined as a method" do
        defined?(essay_writer).should eq 'method'
    end
    
    it "requires an argument of 5 items" do
        method(:essay_writer).arity.should eq 5
    end
    
    it "returns the correct essay as a string" do
        essay_writer(array_1).should eq "He was an important person in 1603. He did a lot. I want to learn more about him. His most important contribution to history is that he founded the Tokugawa period, a peaceful time that lasted over 200 years. Tokugawa Ieyasu's contribution is important."
    end
    
end

# 5. Reflection

#What parts of your strategy worked? What problems did you face?

# For some reason this challenge was more difficult for me than the later challenges. I worked with Eiko on this. We had some good ideas, but really couldn't figure out how to fix it. I would love an explanation of where we were supposed to go next because I feel like we were so close.

#What questions did you have while coding? What resources did you find to help you answer them?

# Several. Creating and using objects still is confusing to me. I am going to do some more research on it and try to find some good videos to watch.

#What concepts are you having trouble with, or did you just figure something out? If so, what?

# Some of the concepts with objects are confusing, but I understand the gist of it.

#Did you learn any new skills or tricks?

# Not really this time. Wish I could see what I was doing wrong.

#How confident are you with each of the learning objectives?

# Eh not too confident with the objects bit.

#Which parts of the challenge did you enjoy?

# I enjoyed all of it though. It was fun working with Eiko.

#Which parts of the challenge did you find tedious?

# Nothing.
