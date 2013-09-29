
class Building
	attr_accessor :address, :style, :num_floors, :apartments

	def initialize(address, style, num_floors, apartments)
		@address = address.to_s
		@style = style.to_s
		@num_floors = num_floors.to_i
		@apartments = apartments
	end

	def to_s
		"This is a building at address #{@address} of style #{@style} with #{@num_floors} and #{@apartments} apartments."
	end

	def avg_age
		renter_array = []
		@apartments.each do |apartment|
			renter_array << apartment.renters
		end
			flat_array = renter_array.flatten
			age_array = []
			flat_array.each do |renter|
				age_array << renter.age
			end
			total_age = 0
			age_array.each do |age| total_age += age_array
			end

		# 	apartment.renters.each do |renter|
		# 		total_age += renter.age
		# 		total_renters += 1
		# 	end
		# end
		return (total_age / age_array.count)
	end

end

class Apartment
	attr_accessor :number, :rent, :sqft, :num_beds, :renters

	def initialize(number, rent, sqft, num_beds, renters)
		@number = number.to_i
		@rent = rent.to_i
		@sqft = sqft.to_f
		@num_beds = num_beds.to_i
		@renters = renters
	end

	def to_s
		"This is apartment number #{number}, with #{sqft} square feet, #{num_beds} beds, and a rent of #{rent}. The occupants are #{renters}."
	end

#rent per person if split evenly
	def rent_each
		return (@rent / @renters.length)
	end

#density
	def density
		return (@sqft / @renters.length)
	end

end

class Person
	attr_accessor :name, :age, :gender

	def initialize(name, age, gender)
		@name = name.to_s
		@age = age.to_i
		@gender = gender.to_s
	end

	def to_s
		puts "My name is #{name} and I'm a #{age} year old #{gender}."
	end

end

# tenants- but I don't want to assign them names, because that's superfluous
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
apartment_1 = Apartment.new("1", 1100, 1400, 3, [arthur, boris]),
apartment_2 = Apartment.new("2", 1500, 1500, 3, [caroline, daphne, ellen]),
apartment_3 = Apartment.new("3", 1600, 1500, 3, [fred, george, harriet]),
apartment_4 = Apartment.new("4", 1800, 1800, 3, [isabelle, justin, kelsey]),
apartment_5 = Apartment.new("5", 1800, 1800, 2, [louis, michelle, nathan])

# building
holland_st = Building.new("118 Holland", "Victorian", 3, [apartment_1, apartment_2, apartment_3, apartment_4, apartment_5])

puts holland_st.address
puts holland_st.style
puts apartment_4.renters
puts holland_st.avg_age

