require 'pry'

class Building
	attr_accessor :address, :style, :num_floors, :apartments

	def initialize(address, style, num_floors, apartments)
		@address = address
		@style = style
		@num_floors = num_floors
		@apartments = {}
	end

	def to_s
		"Building: #{address}, #{style}, #{num_floors}, #{apartments}"
	end

	def avg_age
		age = 0
		pop = 0
		@apartments.each {|key, value| age = age + value.total_age}
		@apartments.each {|key, value| pop = pop + value.population}
		return (age.to_f / pop.to_f)
	end

end

class Apartment
	attr_accessor :number, :rent, :sqft, :num_beds, :renters

	def initialize(number, rent, sqft, num_beds, renters)
		@number = number
		@rent = rent
		@sqft = sqft
		@num_beds = num_beds
		@renters = {}
	end

	def to_s
		"Apartment: #{number}, #{rent}, #{sqft}, #{num_beds}, #{renters}"
	end

	def population
		@renters.length
	end
# Method to divide the rent among the number of tenants in an apartment. 
	def rent_split
		return @rent/(@renters.length)
	end
# Method to calculate the population density in an apartment.
	def density
		return @sqft/(@renters.length)
	end
# Method to calculate total age of an apartment. 
	def total_age
		sum = 0 
		@renters.each { |key, value| sum = sum + value.age }
		return sum
	end
end

class Renter
	attr_accessor :name, :age, :gender

	def initialize(name, age, gender)
		@name = name
		@age = age
		@gender = gender
	end

	def to_s
		"Renter: #{name}, #{age}, #{gender}"
	end

end

# Define Building 1. 
b1 = Building.new("380 Mt Auburn", "House", 2, [1, 2])

# Define apartments in building 1. 
b1.apartments["a11"] =  Apartment.new(1, 1400, 3200, 2, {})
b1.apartments["a12"] =  Apartment.new(2, 1400, 3200, 3, {})

# Define renters in building 1. 
b1.apartments["a11"].renters["George"] = Renter.new("George", 50, "male")
b1.apartments["a11"].renters["Anna"] = Renter.new("Anna", 40, "female")

b1.apartments["a12"].renters["Erik"] = Renter.new("Erik", 31, "male")
b1.apartments["a12"].renters["Matt"] = Renter.new("Matt", 34, "male")
b1.apartments["a12"].renters["Claire"] = Renter.new("Claire", 23, "female")

# p b1.apartments

# p b1.apartments["a11"].density
# p b1.apartments["a12"].density

# p b1.apartments["a11"].rent_split
# p b1.apartments["a12"].rent_split 

#binding.pry
#p b1.apartments["a12"].total_age 

# p b1.avg_age
