# Specification:

## Create a class for a Building that will have these attributes (address,style, number of floors and 
# 	apartments)
## Create a class for an Apartment that will have these attributes (number, rent, square feet, number of 
# 	bedrooms and renters)
## Create a class for a Person that will have these attributes (name, age, gender and apartment)
# Create one or more buildings, Building instances, and add it's attributes
# In each of these buildings add apartments and each apartment's attributes.
# In each of these apartments add people/renters.
# For each building calculate the average age of people living in this building and print this value out. 
# Use a method for this calculation
# For each apartment calculate the density people per square foot of the people living there. 
# And print this value out. Use a method for this calculation
# For each apartment in a building calculate how much eachp person/renter should pay for rent if 
# they all split the rent equally. And print this value out. Use a method for this calculation

class Building
	attr_accessor :address, :style, :number_of_floors, :apartments

	def initialize(address, style, floors, apartments)
		@address = address
		@style = style
		@number_of_floors = floors
		@apartments = apartments
	end
end

class Apartment
	attr_accessor :number, :rent, :square_feet, :number_of_bedrooms, :renters

	def initialize(number, rent, sqft, bedrooms, renters)
		@number = number
		@rent = rent
		@square_feet = sqft
		@number_of_bedrooms = bedrooms
		@renters = renters
	end
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


