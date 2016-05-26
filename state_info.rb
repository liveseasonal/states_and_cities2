require 'pry'

# puts "Please give me a state code"
# statecode = gets.chomp.to_sym.upcase
# puts "How much do you plan on spending?"
# dollar= gets.chomp.to_i

@states = {
  OR: 'Oregon',
  FL: 'Florida',
  CA: 'California',
  NY: 'New York',
  MI: 'Michigan'
}

@states[:WA] = 'Washington'
@states[:CO] = 'Colorado'

# puts states 

@cities = {
  OR: ["Portland", "Bull Mountain"],
  FL: ["Orlando", "Miami"],
  CA: ["San Jose", "San Diego"],
  NY: ["New York City", "Ithaca"],
  MI: ["Detroit"],
  WA: ["Seattle", "Salem"],
  CO: ["Denver", "Boulder"]
}


# Task 3
#Battled for a while with no implicit conversion of array into string. I had to implement a .join(', ') from the docs
def describe_state(statecode)
  numcity = @cities[statecode].length
  "#{statecode} is for " + @states[statecode] + " .It has #{numcity} major cities: " + @cities[statecode].join(', ')
  # + @cities[statecode][0]
end  

puts describe_state(:CA)

# Task 4

# Declare another Hash called taxes which is responsible for defining taxes for each of the states (eg: 7.5 for 7.5%). You can just make up the values... though I cannot guarantee that the US Gov't will not come after you for misrepresenting their tax information.


@taxes = {
  OR: 7.5,
  FL: 10,
  CA: 12,
  NY: 9,
  MI: 9,
  WA: 11,
  CO: 6
}

# Task 5

# Define another method called calculate_tax which:

# Takes as input the state code as well as a dollar amount (eg: 123.49)
# Determines the tax rate to use based on the provided state
# Calculates the tax amount based on that rate
# Returns the tax amount rounded to 2 decimal places (eg: 44.53)

def calculate_tax(statecode, dollar)
  
  tax_rate = @taxes[statecode].to_f / 100
  after_tax_amount = dollar * tax_rate
  after_tax_amount 
  # binding.pry
end  

 # puts calculate_tax(statecode, dollar)
puts calculate_tax(:WA, 80)

#Task 6

# Define a method find_state_for_city which should:

# Take as input the name of a city
# Return the state code for where that city is located
# Of course, for your test code, find states for cities that are actually mentioned in your cities hash


def find_state_for_city(cityname)
  state_code = "Sorry we couldn't find a state with that city in it."
  # binding.pry
  @cities.each do |state, cities|
    if cities.include?(cityname)
      # binding.pry
      return state
    end
  end
  # return state_code
   
end 
puts find_state_for_city("Denver")
puts find_state_for_city("Bull Mountain")
puts find_state_for_city("Detroit")







