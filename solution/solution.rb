class Building
	attr_accessor :address, :style, :num_floors, :apartments

	def initialize(address, style, num_floors, apartments)
		@address = address.to_s
		@style = style.to_s
		@num_floors = num_floors.to_i
		@apartments = []
	end

	def avg_age
		sum = 0
		tenants = 0
		apartments.each do |apartment|
			apartment.renters.each do |x|
				sum += x.age
				tenants += 1
			end
		end
		sum.to_f / tenants.to_f
	end

end

class Apartment
	attr_accessor :number, :rent, :sqft, :num_beds, :renters

	def initialize(number, rent, sqft, num_beds, renters)
		@number = number.to_i
		@rent = rent.to_f
		@sqft = sqft.to_f
		@num_beds = num_beds.to_i
		@renters = []
	end

	def to_s
		"This is apartment number #{number}, with #{sqft} square feet, #{num_beds} beds, and a rent of #{rent}. The occupants are #{renters}."
	end

#redundant
	def renters
		@renters
	end

#rent per person if split evenly
	def rent_each
		return (@rent.to_f / @renters.size)
	end

#density
	def density
		return (@sqft.to_f / @renters.size)
	end

	def to_s
		"This is apartment number #{number}, with #{sqft} square feet, #{num_beds} beds, and a rent of #{rent}. The occupants are #{renters}."
	end

end

class Person
	attr_accessor :name, :age, :gender

	def initialize(name, age, gender)
		@name = name.to_s
		@age = age
		@gender = gender.to_s
	end

	def to_s
		"My name is #{name} and I'm a #{age} year old #{gender}."
	end

end

# tenants
arthur = Person.new('Arthur', 35, 'male'),
boris = Person.new('Boris', 83, 'male'),
caroline = Person.new('Caroline', 12, 'female'),
daphne = Person.new('Daphne', 78, 'female'),
ellen = Person.new('Ellen', 56, 'female'),
fred = Person.new('Fred', 61, 'male'),
george = Person.new('George', 40, 'male'),
harriet = Person.new('Harriet', 38, 'female'),
isabelle = Person.new('Isabelle', 25, 'female'),
justin = Person.new('Justin', 28, 'male'),
kelsey = Person.new('Kelsey', 25, 'female'),
louis = Person.new('Louis', 40, 'male'),
michelle = Person.new('Michelle', 41, 'female'),
nathan = Person.new('Nathan', 27, 'male')

# apartments
apartment_1 = Apartment.new("1", 1100, 1400, 2, [arthur, boris]),
apartment_2 = Apartment.new("2", 1500, 1500, 3, [caroline, daphne, ellen]),
apartment_3 = Apartment.new("3", 1600, 1500, 3, [fred, george, harriet]),
apartment_4 = Apartment.new("4", 1800, 1800, 3, [isabelle, justin, kelsey]),
apartment_5 = Apartment.new("5", 1800, 1800, 3, [louis, michelle, nathan])

# building
holland_st = Building.new("118 Holland", "Victorian", 3, [apartment_1, apartment_2, apartment_3, apartment_4, apartment_5])