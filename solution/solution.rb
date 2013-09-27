# Specification:

## Create a class for a Building that will have these attributes (address,style, number of floors and 
# 	apartments)
## Create a class for an Apartment that will have these attributes (number, rent, square feet, number of 
# 	bedrooms and renters)
## Create a class for a Person that will have these attributes (name, age, gender and apartment)
## Create one or more buildings, Building instances, and add it's attributes
## In each of these buildings add apartments and each apartment's attributes.
## In each of these apartments add people/renters.
# For each building calculate the average age of people living in this building and print this value out. 
# Use a method for this calculation
# For each apartment calculate the density people per square foot of the people living there. 
# And print this value out. Use a method for this calculation
# For each apartment in a building calculate how much eachp person/renter should pay for rent if 
# they all split the rent equally. And print this value out. Use a method for this calculation

class Building
	attr_accessor :address, :style, :number_of_floors, :apartments

	def initialize(address, style, floors, all_apartments)
		@address = address
		@style = style
		@number_of_floors = floors
		@apartments = all_apartments # passes in all Apartment attributes for each apartment
	
	end

	# def all_the_square_feet
	# 	@apartments.each do |number, rent, sqft, bedrooms, renters |
	# 		@apartments.at(2)
	# 	end
	# end

	def avg_age
		#total all ages/number of renters
	end

end

class Apartment
	attr_accessor :number, :rent, :square_feet, :number_of_bedrooms, :renters

	def initialize(number, rent, sqft, bedrooms, renters)
		@number = number
		@rent = rent
		@square_feet = sqft
		@number_of_bedrooms = bedrooms
		@a_person = renters # passes in all the Person attributes for each renter

	end

	# def count_renters
	# 	@a_person.each do |x|
	# 		x.count
	# 	end
	# end

	# def all_the_square_feet
	# 	@square_feet.count
	# end

	# def people_density
	# 	# total sqft/number renters
	# 	@square_feet/@renters.count
	# end

	def try_sqft_again 
		@square_feet
	end

	# def communal_rent
	# 	# total rent/number renters
	# end

end	

class Person
	attr_accessor :name, :age, :gender, :apartment

	def initialize(name, age, gender, apartment)
		@name = name
		@age = age
		@gender = gender
		@apartment = apartment
	end
end

r1 = Person.new("Marissa", 23, "lady",1)
r2 = Person.new("Yana", 25, "lady", 2)
r3 = Person.new("Jen", 32, "lady", 3)
r4 = Person.new("Danielle", 61, "lady", 4)
r5 = Person.new("Haya", 47, "lady", 5)
r6 = Person.new("Alina", 19, "lady", 6)

a1 = Apartment.new(1, 1625, 410, 2, r1)
a2 = Apartment.new(2, 1725, 420, 2, r2)
a3 = Apartment.new(3, 1600, 430, 2, r3)
a4 = Apartment.new(4, 1800, 490, 2, r4)
a5 = Apartment.new(5, 1595, 450, 2, r5)
a6 = Apartment.new(6, 1825, 470, 2, r6)

apartments_array = [a1, a2, a3, a4, a5, a6]

b1 = Building.new("199 South St.", "Midsize Brick", 3, apartments_array)
# p r1
# p a1
# p b1
# p b1.all_the_square_feet
sqft_array = [a6.try_sqft_again, a2.try_sqft_again, a3.try_sqft_again, a4.try_sqft_again, a5.try_sqft_again, a6.try_sqft_again]
total_sqft = sqft_array.inject{|sum, x| sum + x}
p total_sqft

# p apartments_array.each {|x| x.try_sqft_again}

# count_renters = a1.count_renters#(apartments_array)
# p renters_count

# def square_feet_outside_method(pass_me_apartments_array)
# 	pass_me_apartments_array.each do |x| #|number, rent, sqft, bedrooms, renters |
# 		p pass_me_apartments_array.at(2)
# 	end
# end

# attempt = square_feet_outside_method(apartments_array)

# renters = [r1, r2, r3, r4, r5, r6]



# @renters << Person.new("Cori", 55, "lady", 3)
# @renters << Person.new("Jes", 28, "lady", 48)

# a2 = Apartment.new(15, 3500, 750, 4, 4)
# a3 = Apartment.new(30, 1425, 375, 2, 3)
# a4 = Apartment.new(1, 1525, 600, 1, 1)
# a5 = Apartment.new(19, 1700, 400, 2, 1)
# a6 = Apartment.new(23, 1350, 325, 1, 1)
# a7 = Apartment.new(3, 5900, 1200, 3, 1)
# a8 = Apartment.new(48, 4300, 1000, 5, 1)


