class Building
	attr_accessor :address, :style, :num_floors, :apartments

	def initialize(address, style, num_floors, apartments)
		@apartments = []

		@address = "address"
		@style = "style"
		@num_floors = num_floors
		@apartments = apartments
	end

	def to_s
		"Apartments for rent inside!"
	end
#### need to split @renters 

	def fill_apt
		@apartments.each do |apartment|
			x = apt.index[0]
		end
####
	end

end

class Apartment
	attr_accessor :number, :rent, :sqft, :num_beds, :renters, :each_apt

	def initialize(number, rent, sqft, num_beds, renters, each_apt)
		@renters = []

		@number = number
		@rent = rent
		@sqft = sqft
		@num_beds = num_beds
		@each_apt = each_apt
		@renters = renters
# renters is an array of people
	end

	def to_s
		"Check me out, I'm an apartment to live in."
	end

#goal: make a hash of roommate_groupings

##split people into roommates
	def each_apt
		@each_apt = []
		@renters.each do |x|
		@each_apt <<  each_slice(3).to_a
		end
		return each_apt
	end

#assign arrays of roommates apartments 
	def fill_apt
		@fill_apt = {}
		x = @each_apt[(1...(arr.size -1)).zip @each_apt]
		# @each_apt { |hash, each_apt| hash[each_apt] = apt_name }
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

tenants = [
Person.new('Arthur', 35, 'male'),
Person.new('Boris', 83, 'male'),
Person.new('Caroline', 12, 'female'),
Person.new('Daphne', 78, 'female'),
Person.new('Ellen', 56, 'female'),
Person.new('Fred', 61, 'male'),
Person.new('George', 40, 'male'),
Person.new('Harriet', 38, 'female'),
Person.new('Isabelle', 25, 'female'),
Person.new('Justin', 28, 'male'),
Person.new('Kelsey', 25, 'female'),
Person.new('Louis', 40, 'male'),
Person.new('Michelle', 41, 'female'),
Person.new('Nathan', 27, 'male') ]

apartments = [
Apartment.new(1, 1100, 1400, 2, 3),
Apartment.new(2, 1500, 1500, 3, 3),
Apartment.new(3, 1600, 1500, 3, 3),
Apartment.new(4, 1800, 1800, 3, 3),
Apartment.new(5, 1800, 2, 2) ]


holland_st = Building.new("118 Holland", "Victorian", 3, [1,2,3,4,5])

