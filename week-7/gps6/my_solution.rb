# # Virus Predictor

# # I worked on this challenge [by myself, with: Gary].
# # We spent [#] hours on this challenge.

# # EXPLANATION OF require_relative
# #  means that it requires and reads the file relative to the folder that it is currently running in.
# # 
# require_relative 'state_data'
# # State_data is a multi-dimentional hash or "hashy-hash"

# class VirusPredictor
  
#   # Takes in the data from state_data and assign it to instance variables
#   def initialize(state_of_origin, population_density, population)
#     @state = state_of_origin
#     @population = population
#     @population_density = population_density
#   end
  
#   # calls instances of the methods predicted_deaths and speed_of_spread
#   def virus_effects
#     predicted_deaths(@population_density, @population, @state)
#     speed_of_spread(@population_density, @state)
#   end

#   private
  
#   # Predict how many death in will occur based on density and population.
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
  
#   # determine the speed of the virus spread based on density
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

class VirusPredictor
  
  # Takes in the data from state_data and assign it to instance variables
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  

  # private
  #Sets visibility of the information as private
  
  # Predict how many death in will occur based on density and population.
  def predicted_deaths
    # predicted deaths is solely based on population density
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

    print "#{@state} will lose #{number_of_deaths} people in this outbreak and will spread across the state in #{speed} months.\n\n"

  end
  
  
  
end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


  def call_all
    STATE_DATA.each_key do |x| 
      x = VirusPredictor.new(x, STATE_DATA[x][:population_density], STATE_DATA[x][:population])  
      x.predicted_deaths
    end
  end

call_all

#=======================================================================
# Reflection Section
=begin

What are the differences between the two different hash syntaxes shown in the state_data file?
-- The two syntaxes are string and symbol.
What does require_relative do? How is it different from require?
-- Require relative means that it requires and reads the file relative to the folder that it is currently running in.
What are some ways to iterate through a hash?
-- Some ways to iterate through a hash are .each, .each_key, and .each_value
When refactoring virus_effects, what stood out to you about the variables, if anything?
-- I found that both the methods within virus_effects had similar parameters and decided to combine them into one method
What concept did you most solidify in this challenge?
-- .each was really solidified for me in this challenge as we used it to iterate through the hash and make new instances of a class.

=end
