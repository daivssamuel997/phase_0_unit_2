# U2.W6: Create a Playlist from Driver Code


# I worked on this challenge by myself.


# Pseudocode
# Need to create a Song class. It brings in two arguments, a song name and the artist who sang it.
    # Create an initialize method that brings in two arguments (song_name, artist) and defines instance variables.





# Initial Solution

class Song
        attr_reader :song_name, :artist
        def initialize(song_name, artist)
                @song_name = song_name
                @artist = artist
        end
        
        def play
                puts "You are now listening to #{@song_name} by #{@artist}."
        end

end

class Playlist
        def initialize(*songs)
                @list = []
                songs.each { |song| @list.push(song) }
        end
        
        def add(*songs)
                songs.each { |song| @list.push(song) }
        end
        
        def num_of_tracks
                @list.length
        end
        
        def includes?(song)
                @list.include?(song)
        end
        
        def remove(song)
                if @list.include?(song)
                        @list.delete(song)
                        puts "#{song.song_name} has been deleted."
                else
                        puts "#{song} was not removed because it is already not in the list."
                end
        end
        
        def play_all
            @list.each { |song| puts "Now listening to #{song.song_name} by #{song.artist}" }
        end
        
        def display
                puts "The playlist is as follows:"
                @list.each { |song| puts song.song_name.to_s + ", " + song.artist.to_s }
        end
            
end


# Refactored Solution

# I do not believe that my solution needs to be refactored at this time. Every method is concise and to the point and my variable names are clear. My code works to the driver code already written for me and for the extra ones that I wrote myself.

# DRIVER TESTS GO BELOW THIS LINE
one_by_one = Song.new("One by One", "Sirenia")
world_so_cold = Song.new("World So Cold", "Three Days Grace") 
going_under = Song.new("Going Under", "Evanescence")
 
my_playlist = Playlist.new(one_by_one, world_so_cold, going_under)
 
lying_from_you = Song.new("Lying From You", "Linkin Park")
angels = Song.new("Angels", "Within Temptation")
 
my_playlist.add(lying_from_you, angels)
p my_playlist.num_of_tracks == 5
going_under.play
my_playlist.remove(angels)
p my_playlist.includes?(lying_from_you) == true
my_playlist.play_all
my_playlist.display

last_to_know = Song.new("Last to Know", "Three Days Grace")
my_playlist.add(last_to_know)
my_playlist.num_of_tracks
my_playlist.display
my_playlist.remove("No more")

# Reflection

#What parts of your strategy worked? What problems did you face?

# I did a lot of trial and error, as the instructions said to do. I found that some of my ideas didn't work in the way that I imagined that they would. I was able to figure everything out eventually though.

#What questions did you have while coding? What resources did you find to help you answer them?

# I love referring to the docs. I really find it interesting trying to understand what the particular method is doing and go about utilizing its powers. i just touched back up with some array stuff.

#What concepts are you having trouble with, or did you just figure something out? If so, what?

# None really with this challenge.

#Did you learn any new skills or tricks?

# I did get some practice using the attr_reader. It kind of works like a struct in C. This was pretty cool to see it work so well.

#How confident are you with each of the Learning Competencies?

# Pretty confident.

#Which parts of the challenge did you enjoy?

# Everything. Really fun challenge.

#Which parts of the challenge did you find tedious?

# Nothing. 