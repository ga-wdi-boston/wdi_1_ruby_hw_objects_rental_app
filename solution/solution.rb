class Building
	attr_accessor :address, :style, :num_floors, :apartments

	def initialize(address, style, num_floors, apartments)
		@address = "address"
		@style = "style"
		@num_floors = num_floors
		@apartments = apartments
	end

	def to_s
		"Apartments for rent inside!"
	end

###### 
	def avg_age
		@apartments.each do |apt|
			apartments.renters.each do |renter|
				total_age += renter.age
				total_renters += 1
			end
		end
		return (total_age / total_renters)

	end

	def total_age
		@total_age = 0
		@renters.each do |renter|
			x = renter.age
			@total_age += x
		end
		return @age_total
	end

end

class Apartment
	attr_accessor :number, :rent, :sqft, :renters

#I'm getting an error, wrong number of arguments. is it because i don't do anything with num_beds?
	def initialize(number, rent, sqft, num_beds, renters)
		@number = number
		@rent = rent
		@sqft = sqft
		@num_beds = num_beds
		@renters = renters
	end

	def to_s
		"Check me out, I'm an apartment to live in."
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
		@name = "name"
		@age = age
		@gender = "gender"
	end

	def to_s
		"I want to rent an apartment, please."
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
apartment_1 = Apartment.new(1, 1100, 1400, [arthur, boris]),
apartment_2 = Apartment.new(2, 1500, 1500, 3, [caroline, daphne, ellen]),
apartment_3 = Apartment.new(3, 1600, 1500, 3, [fred, george, harriet]),
apartment_4 = Apartment.new(4, 1800, 1800, 3, [isabelle, justin, kelsey]),
apartment_5 = Apartment.new(5, 1800, 2, [louis, michelle, nathan])


holland_st = Building.new("118 Holland", "Victorian", 3, [apartment_1, apartment_2, apartment_3, apartment_4, apartment_5])

puts holland_st.avg_age
puts apartment_5.density