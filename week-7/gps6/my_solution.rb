# Virus Predictor

# I worked on this challenge [by myself, with: Alan Alcesto].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
#
require_relative 'state_data'

class VirusPredictor

  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density < 50
      number_of_deaths = (@population * 0.05).floor
    else
      number_of_deaths = (@population * 0.1).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density > 50
      speed += 2
    else
      speed += 2.5 - (@population_density/50)*0.5.floor
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects

STATE_DATA.each do |state, data|
  state = VirusPredictor.new(state, data[:population_density], data[:population])

  state.virus_effects
end




#=======================================================================
# Reflection Section
=begin

What are the differences between the two different hash syntaxes shown in the state_data file?
  There's the key as a string followed by an arrow => syntax then there are symbols to represent keys.
What does require_relative do? How is it different from require?
  Require relative loads the data from another file relative to the file drawing the data. Using 'relative' lets Ruby know that it should look in the working directory for the file, as opposed to just require, which would need a full path.
What are some ways to iterate through a hash?
  You can use the .each method and use two variables like key and value to target the keys and values of the hash.
When refactoring virus_effects, what stood out to you about the variables, if anything?
  There was no need for the instance variables to be used as arguments in the virus_effects method because they were already initialized.
What concept did you most solidify in this challenge?
  Refactoring to make code DRY, iterating through hashes, applying methods from within a class outside the class.

=end