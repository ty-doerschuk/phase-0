# Virus Predictor

# I worked on this challenge [Carl ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# Require relative is used to loads a relaive path to files  directly within your project whereas require will find external files for you as needed.
# external files/folders
# require_relative 'state_data'

#population density is number of people per square mile as of 2012
#this data is updated every year with estimates from a 10 year census


STATE_DATA = {
  "Alabama" => {population_density: 94.65, population: 4822023},
  "Alaska" => {population_density: 1.1111, population: 731449},
  "Arizona" => {population_density: 57.05, population: 6553255},
  "Arkansas" => {population_density: 56.43, population: 2949131},
  "California" => {population_density: 244.2, population: 38041430},
  "Colorado" => {population_density: 49.33, population: 5187582},
  "Connecticut" => {population_density: 741.4, population: 3590347},
  "Delaware" => {population_density: 470.7, population: 917092},
  "Florida" => {population_density: 360.2, population: 19317568},
  "Georgia" => {population_density: 172.5, population: 9919945},
  "Hawaii" => {population_density: 216.8, population: 1392313},
  "Idaho" => {population_density: 19.15, population: 1595728},
  "Illinois" => {population_density: 231.9, population: 12875255},
  "Indiana" => {population_density: 182.5, population: 6537334},
  "Iowa" => {population_density: 54.81, population: 3074186},
  "Kansas" => {population_density: 35.09, population: 2885905},
  "Kentucky" => {population_density: 110.0, population: 4380415},
  "Louisiana" => {population_density: 105.0, population: 4601893},
  "Maine" => {population_density: 43.04, population: 1329192},
  "Maryland" => {population_density: 606.2, population: 5884563},
  "Massachusetts" => {population_density: 852.1, population: 6646144},
  "Michigan" => {population_density: 174.8, population: 9883360},
  "Minnesota" => {population_density: 67.14, population: 5379139},
  "Mississippi" => {population_density: 63.50, population: 2984926},
  "Missouri" => {population_density: 87.26, population: 6021988},
  "Montana" => {population_density: 6.86, population: 1005141},
  "Nebraska" => {population_density: 23.97, population: 1855525},
  "Nevada" => {population_density: 24.8, population: 2758931},
  "New Hampshire" => {population_density: 147.0, population: 1320718},
  "New Jersey" => {population_density: 1205, population: 8864590},
  "New Mexico" => {population_density: 17.16, population: 2085538},
  "New York" => {population_density: 415.3, population: 19570261},
  "North Carolina" => {population_density: 200.6, population: 9752073},
  "North Dakota" => {population_density: 9.92, population: 699628},
  "Ohio" => {population_density: 282.5, population: 11544225},
  "Oklahoma" => {population_density: 55.22, population: 3814820},
  "Oregon" => {population_density: 40.33, population: 3899353},
  "Pennsylvania" => {population_density: 285.3, population: 12763536},
  "Rhode Island" => {population_density: 1016, population: 1050292},
  "South Carolina" => {population_density: 157.1, population: 4723723},
  "South Dakota" => {population_density: 10.86, population: 833354},
  "Tennessee" => {population_density: 156.6, population: 6456243},
  "Texas" => {population_density: 98.07, population: 26059203},
  "Utah" => {population_density: 34.3, population: 2855287},
  "Vermont" => {population_density: 67.73, population: 626011},
  "Virginia" => {population_density: 207.3, population: 8185867},
  "Washington" => {population_density: 102.6, population: 6724540},
  "Washington,D.C."=> {population_density: 10357, population: 632323},
  "West Virginia" => {population_density: 77.06, population: 1855413},
  "Wisconsin" => {population_density: 105.2, population: 5726398},
  "Wyoming" => {population_density: 5.851, population: 576412}
}

class VirusPredictor
  # Parameters >> instance variables
  def initialize(state, population_density, population)
    @state = state
    @population = population
    @population_density = population_density
  end
  # Calls two private methods. Predicted_deaths takes 3 instance variables & speed_of_spread takes two instance variables
  def virus_effects
    predicted_deaths(@population_density, @population, @state)
    speed_of_spread(@population_density)
  end

  private
  # Takes population density by IF/ELSE control flow, then times population by according float number
    def predicted_deaths(population_density, population, state)
    # predicted deaths is solely based on population density
      case population_density
        when 200..(1.0/0) #infinity
          num_of_deaths = (population * 0.4).floor
        when 150..199
          num_of_deaths = (population * 0.3).floor
        when 100..149
          num_of_deaths = (population * 0.2).floor
        when 50..99
          num_of_deaths = (population * 0.1).floor
        else
          num_of_deaths = (population * 0.05).floor
      end

    #   if @population_density >= 200
    #   number_of_deaths = (@population * 0.4).floor
    # elsif @population_density >= 150
    #   number_of_deaths = (@population * 0.3).floor
    # elsif @population_density >= 100
    #   number_of_deaths = (@population * 0.2).floor
    # elsif @population_density >= 50
    #   number_of_deaths = (@population * 0.1).floor
    # else
    #   number_of_deaths = (@population * 0.05).floor
    # end

    print "#{state} will lose #{num_of_deaths} people in this outbreak"

  end
  # if/else flow control to manipulate speed of spread. Speed is local variable dependent on population density
  def speed_of_spread(population_density) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0
    case population_density
      when 200..(1/0.0) #infinity
        speed += 0.5
      when 150..199
        speed += 1
      when 100..149
        speed += 1.5
      when 50..99
        speed += 2
      else
        speed += 2.5
    end

    # speed = 0.0

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

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.inside

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

def every_state
  STATE_DATA.each do |state_key, state_value|
    state_key = VirusPredictor.new(state_key, state_value[:population_density], state_value[:population])
    state_key.virus_effects
  end
end


 every_state
#=======================================================================
# Reflection Section

# TO-DO
# Implement method for printing all state predictions
# refactor if/elsifs into case
# remove unnecessary arguments on predicted_deaths and speed_of_spread


# Adell Hanson-Kahn  5:26 PM
# Also, you will have to use ranges in your case because you can't use comparison operators like >= or >
# [50..100]


=begin
Reflection


What are the differences between the two different hash syntaxes shown in the state_data file?
The first key inside the first hash were strings. The values of the strings were a nested hash. Inside that nested hash were symbols, instead of strings.

What does require_relative do? How is it different from require?
‘require_relative’ uses the directory of the where the program is actually listed. While, ‘require’ uses the directory that you are running the program. More specifically, it would need a direct path.

What are some ways to iterate through a hash?
each, each_key, each_value, each_pair, delete_if, keep_if, reject!, select!

When refactoring virus_effects, what stood out to you about the variables, if anything?
There were unnecessary variables in the nested method arguments. It made the code look more complex than it actually was.

What concept did you most solidify in this challenge?
Iterating over a hash. We have experience with arrays in the past lessons, but really haven’t dug into hashes that much. It would nice to make a method and iterate through a large nested hash.

=end