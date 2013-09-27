class Building
	attr_accessor :address, :style, :num_floors, :apartments

	def initialize
		@apartments = []

		@address = "address"
		@style = "style"
		@num_floors = num_floors
		@apartments << Apartment.new(1, 1100, 1400, 2, 3)
		@apartments << Apartment.new(2, 1500, 1500, 3, 3)
		@apartments << Apartment.new(3, 1600, 1500, 3, 3)
		@apartments << Apartment.new(4, 1800, 1800, 3, 3)
		@apartments << Apartment.new(5, 1800, 2, 2)
	end

	def to_s
		"Apartments for rent inside!"
	end

	def fill_apt
		@apartments.each do |apartment|
			x = apt.index[0]
		end

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
		@renters << Person.new('Louis', 40, 'male')
		@renters << Person.new('Michelle', 41, 'female')
		@renters << Person.new('Nathan', 27, 'male')

	end

	def to_s
		"Check me out, I'm an apartment to live in."
	end

	def fill_apt
		each_apt = @renters.each_slice(3).to_a
		return each_apt
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

holland_st = Building.new

# ("118 Holland", "Victorian", 3, [1,2,3,4,5])

