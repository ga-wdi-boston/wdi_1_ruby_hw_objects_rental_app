class Building
	attr_accessor :address, :style, :num_floors, :apartments

	def initialize
		@apartments = []

		@address = "address"
		@style = "style"
		@nun_floors = num_floors
		@apartments = [apartments]
	end

	def to_s
		"Apartments for rent inside!"
	end

end

class Apartment
	attr_accessor :number, :rent, :sqft, :num_beds, :renters

	def initialize
		@renters = []

		@number = number
		@rent = rent
		@sqft = sqft
		@num_beds = num_beds
		@renters = [renters]
	end

	def to_s
		"Check me out, I'm an apartment to live in."
	end
end

class Person
	attr_accessor :name, :age, :gender

	def initialize
		@name = "name"
		@age = age
		@gender = "gender"
	end

	def to_s
		"I want to rent an apartment, please."
	end
end

holland_st = Building("")