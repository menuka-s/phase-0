# Virus Predictor

# I worked on this challenge [with: James Boyd].
# We spent [1.5] hours on this challenge.

# EXPLANATION OF require_relative:

# Takes in a file of that same name and loads it.

# require_relative looks for the file in your current directory. 

# require_relative allows us to use a file that is the same relative position (current directory) as our program. require needs the exact path or directory.

require_relative 'state_data'

# class VirusPredictor

#   # This method will initialize the instance variables in a new VirusPredictor object with values from the state_data hashy hash.
#   # possibly refactor to take just one argument
#   def initialize(state_of_origin, population_density, population)
#     @state = state_of_origin
#     @population = population
#     @population_density = population_density
#   end

#   # This method calls two private methods
#   def virus_effects
#     predicted_deaths(@population_density, @population, @state) # remove args
#     speed_of_spread(@population_density, @state)
#   end

#   private

#   # This method will calculate the number of deaths and outputs it to the console in a string.
#   # refactor: remove arguments
#   def predicted_deaths(population_density, population, state)
#     # predicted deaths is solely based on population density
#     if @population_density >= 200
#       number_of_deaths = (@population * 0.4).floor
#     elsif @population_density >= 150
#       number_of_deaths = (@population * 0.3).floor
#     elsif @population_density >= 100
#       number_of_deaths = (@population * 0.2).floor
#     elsif @population_density >= 50
#       number_of_deaths = (@population * 0.1).floor
#     else
#       number_of_deaths = (@population * 0.05).floor
#     end

#     print "#{@state} will lose #{number_of_deaths} people in this outbreak"

#   end

#   # This method calculates the speed of how the virus will spread and outputs in a string.
#   # remove arguments
#   def speed_of_spread(population_density, state) #in months
#     # We are still perfecting our formula here. The speed is also affected
#     # by additional factors we haven't added into this functionality.
#     speed = 0.0

#     if @population_density >= 200
#       speed += 0.5
#     elsif @population_density >= 150
#       speed += 1
#     elsif @population_density >= 100
#       speed += 1.5
#     elsif @population_density >= 50
#       speed += 2
#     else
#       speed += 2.5
#     end

#     puts " and will spread across the state in #{speed} months.\n\n"

#   end

# end

#Refactored solution

class VirusPredictor

  # This method will initialize the instance variables in a new VirusPredictor object with values from the state_data hashy hash.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population_density = population_density
    @population = population
  end

  # This method calls two private methods
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

  # This method will calculate the number of deaths and outputs it to the console in a string.
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      factor = 0.4
    elsif @population_density >= 150
      factor = 0.3
    elsif @population_density >= 100
      factor = 0.2
    elsif @population_density >= 50
      factor = 0.1
    else
      factor = 0.05
    end
    
    print "#{@state} will lose #{(@population * factor).floor} people in this outbreak"

  end

  # This method calculates the speed of how the virus will spread and outputs in a string.
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    if @population_density >= 200
      speed = 0.5
    elsif @population_density >= 150
      speed = 1
    elsif @population_density >= 100
      speed = 1.5
    elsif @population_density >= 50
      speed = 2
    else
      speed = 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

# STATE_DATA is a Hash of hashes. STATE_DATA contains keys which are assigned to a nested hash as values. In the nested hash there is another set of keys that point to their own values.
# STATE_DATA uses strings as keys and use the "=>" syntax to point to values, while the nested hash uses symbols to point to values.
# STATE_DATA is a constant, and the scope is global because of how it is defined in the state_data.rb file.

# We made the code that outputs virsus predictions for all the states 
# outside of the VirusPredictor class to keep things simple, and we 
# didn't have to change the initialization method too much.

# loop through STATE_DATA and print virus predictions for each state.
STATE_DATA.each do |state, info|
  current_state = VirusPredictor.new(state, 
    STATE_DATA[state][:population_density], 
    STATE_DATA[state][:population])
  current_state.virus_effects
  #puts "current_state id: #{current_state.object_id}"
end

#=======================================================================
# Reflection Section

# What are the differences between the two different hash syntaxes shown in the state_data file?
# One is a string while the other is a symbol. But we can access the associated value with either the string form or symbol form, as long as we follow the correct syntax.

# What does require_relative do? How is it different from require?
# Takes in a file of that same name and loads it.
# require_relative allows us to use a file that is the same relative position (current directory) as our program. require needs the exact path or directory.

# What are some ways to iterate through a hash?
# In this challenge we used the .each enumerable method. This allows us to iterate through the hash effectively. But we do need to make sure we use the correct parameters (like how in the hashy hash we include "info" so we can access the nested hash values - if we didn't include "info" it wouldn't have worked)

# When refactoring virus_effects, what stood out to you about the variables, if anything?
# We used made instance variables in our initialization method. So it doesn't make sense to pass those variables as arguments to a new method if that new method can just access the instance variables natively. 

# What concept did you most solidify in this challenge?
# I didn't know variables with all capitals were considered constants, so it's good that my partner brought it up. Also I gained more practice with the .each method.
