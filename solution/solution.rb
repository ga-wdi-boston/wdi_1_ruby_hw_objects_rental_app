class Building
	attr_accessor :address, :style, :num_floors, :apartments

	def initialize(address, style, num_floors, apartments)
		@address = address
		@style = style
		@num_floors = num_floors
		@apartments = apartments
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
	end
end

class Renter
	attr_accessor :name, :age, :gender

	def initialize(name, age, gender)
		@name = name
		@age = age
		@gender = gender
	end
end
