class Building
	attr_accessor :address, :style, :num_floors, :apartments

	def initialize
		@apartments = []

		@address = "address"
		@style = "style"
		@num_floors = num_floors
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
		@renters << Person.new('Arthur', 35, 'male')
		@renters << Person.new('Boris', 83, 'male')
		@renters << Person.new('Caroline', 12, 'female')
		@renters << Person.new('Daphne', 78, 'female')
		@renters << Person.new('Ellen', 56, 'female')
		@renters << Person.new('Fred', 61, 'male')
		@renters << Person.new('George', 40, 'male')
		@renters << Person.new('Harriet', 38, 'female')
		@renters << Person.new('Isabelle', 25, 'female')
		@renters << Person.new('Justin', 28, 'male')
		@renters << Person.new('Kelsey', 25, 'female')

	end

	def to_s
		"Check me out, I'm an apartment to live in."
	end

	def fill_apt
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

holland_st = Building("118 Holland", "Victorian", 3, [1,2,3]) #how do I write the array?

