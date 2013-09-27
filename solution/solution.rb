class Building
	attr_accessor :address, :style, :num_floors, :apartments

	def initialize(address, style, num_floors, apartments)
		@address = address
		@style = style
		@num_floors = num_floors
		@apartments = apartments
		@bhash = Hash[address: address, style: style, num_floors: num_floors, apartments: apartments]
	end

	def to_s
		"Building: #{address}, #{style}, #{num_floors}, #{apartments}"
	end

	def address
		@bhash[:address]
	end

	def style
		@bhash[:style]
	end

	def num_floors
		@bhash[:num_floors]
	end

	def apartments
		@bhash[:apartments]
	end


end

class Apartment
	attr_accessor :number, :rent, :sqft, :num_beds, :renters

	def initialize(number, rent, sqft, num_beds, renters)
		@number = number
		@rent = rent
		@sqft = sqft
		@num_beds = num_beds
		@renters = renters
		@ahash = Hash[number: number, rent: rent, sqft: sqft, num_beds: num_beds, renters: renters]
	end

	def to_s
		"Apartment: #{number}, #{rent}, #{sqft}, #{num_beds}, #{renters}"
	end
	
	def number
		@ahash[:number]
	end
	
	def rent
		@ahash[:rent]
	end
	
	def sqft
		@ahash[:sqft]
	end
	
	def num_beds
		@ahash[:num_beds]
	end

	def renters
		@ahash[:renters]
	end

	def population
		@ahash[:renters].length
	end
	# Method to divide the rent amon the number of tenants in an apartment. 
	def rent_split
		return @rent/(@ahash[:renters].length)
	end
	# Method to calculate the population density in an apartment.
	def density
		return @sqft/(@ahash[:renters].length)
	end
end

class Renter
	attr_accessor :name, :age, :gender

	def initialize(name, age, gender)
		@name = name
		@age = age
		@gender = gender
		@rhash = Hash[name: name, age: age, gender: gender]
	end

	def to_s
		"Renter: #{name}, #{age}, #{gender}"
	end

	def name
		@rhash[:name]
	end

	def age
		@rhash[:age]
	end

	def gender
		@rhash[:gender]
	end

end

# Define Building 1. 
b1 = Building.new("380 Mt Auburn", "House", 2, [1, 2])
#puts b1.apartments[1]

# Define apartments in building 1. 
a11 = Apartment.new(1, 1400, 3200, 2, ["George", "Anna"])
puts a11.rent_split
puts a11.density

a12 = Apartment.new(2, 1400, 3200, 3, ["Erik", "Matt", "Claire"])
puts a12.rent_split
puts a12.density

# Define renters in building 1. 
r111 = Renter.new("George", 50, "male")

r112 = Renter.new("Anna", 40, "female")

r121 = Renter.new("Matt", 33, "male")

r122 = Renter.new("Erik", 32, "male")

r123 = Renter.new("Claire", 23, "female")

# Test hash. 
# h = {"a" => 1, "b" => 2, "b" => 3, "b" => 4, "c" => 5, "c" => 6}
# puts h.each_key{|b|}
