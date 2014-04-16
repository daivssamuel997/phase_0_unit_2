# U2.W5: Virus Predictor

# I worked on this challenge by myself.

# EXPLANATION OF require_relative
# require_relative allows you to access the file that is relative to the
# file containing the require_relative statement. Basically, it is ruby's
# way of combining files like a project.
require_relative 'state_data'

=begin
class VirusPredictor

  def initialize(state_of_origin, population_density, population, region, regional_spread)
    @state = state_of_origin
    @population = population
    @population_density = population_density
    @region = region
    @next_region = regional_spread
  end # in this instance method, you are initializing instance variables. Instance variables can be used throughout the entire class.

  def virus_effects  #HINT: What is the SCOPE of instance variables? Instance variables can be used throughout the entire class.
      predicted_deaths(@population_density, @population, @state) # As depicted on a lower line, these are both private methods.
    speed_of_spread(@population_density, @state)
  end

  private  #what is this?  what happens if it were cut and pasted above the virus_effects method? Private methods cannot be called with an explicit receiver. You can't call a private method using a variable that you have assigned to an instance of a class. You can call the method inside the instance. If you cut and pasted this code above that the virus_effects method than it wouldn't work because you can't call a privte method using a variable you have assigned to an instance of a class.

  def predicted_deaths(population_density, population, state)
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else 
      number_of_deaths = (@population * 0.05).floor
    end # returns the number of deaths rounded to the largest int for the particular state

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  def speed_of_spread(population_density, state) #in months
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else 
      speed += 2.5
    end # performs some checks and returns a string of the calculated spped in months.

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end
=end

# Refactored code

class VirusPredictor
    
    def initialize(state_of_origin, population_density, population, region, regional_spread)
        @state = state_of_origin
        @population = population
        @population_density = population_density
        @region = region
        @next_region = regional_spread
    end
   
   def virus_effects
        speed = 0.0
        if @population_density >= 200
            number_of_deaths = (@population * 0.4).floor
            speed += 0.5
            elsif @population_density >= 150
            number_of_deaths = (@population * 0.3).floor
            speed += 1
            elsif @population_density >= 100
            number_of_deaths = (@population * 0.2).floor
            speed += 1.5
            elsif @population_density >= 50
            number_of_deaths = (@population * 0.1).floor
            speed += 2
            else
            number_of_deaths = (@population * 0.05).floor
            speed += 2.5
        end
        
        print "#{@state} will lose #{number_of_deaths} people in this outbreak and will spread across the state in #(speed) months.\n\n"
    end
end


#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population], STATE_DATA["Alabama"][:region], STATE_DATA["Alabama"][:regional_spread]) 
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population], STATE_DATA["New Jersey"][:region], STATE_DATA["New Jersey"][:regional_spread]) 
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population], STATE_DATA["California"][:region], STATE_DATA["California"][:regional_spread]) 
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population], STATE_DATA["Alaska"][:region], STATE_DATA["Alaska"][:regional_spread]) 
alaska.virus_effects