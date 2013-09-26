class Building
	attr_accessor :address, :style, :num_floors, :apartments

	def initialize

	end

	def to_s
		"Apartments for rent inside!"
	end

end

class Apartment
	attr_accessor :number, :rent, :sqft, :num_beds, :renters

	def initialize
		
	end

	def to_s
		"Check me out, I'm an apartment to live in."
	end
end

class Person
	attr_accessor :name, :age, :gender

	def initialize
		
	end

	def to_s
		"I want to rent an apartment, please."
	end
end