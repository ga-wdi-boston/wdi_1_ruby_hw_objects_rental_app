class Building 
	attr_accessor :address , :style , :num_floors , :apartments 

	def initialize(address, style, num_floors, apartments)
		@address = address.to_s
		@style = style.to_s
		@num_floors = num_floors.to_i
		@apartments = []
	end

end

class Apartment 
	attr_accessor :number , :rent , :sqft , :num_beds

	def initialize(number, rent, sqft, num_beds)
		@number = number.to_i
		@rent = rent.to_i
		@sqft = sqft.to_i
		@num_beds = num_beds.to_i
		@renters = []
	end
end

class Person 
	attr_accessor :name , :age , :gender 

	def initialize(name, age, gender)
		@name = name.to_s
		@age = age.to_i
		@gender = gender.to_s
		
	end
end 
#address, style, num_floors, apartments)
b1 = Building.new("100 main st", "brownstone" , "3", "6")
b2 = Building.new("200 main st", "brownstone" , "3", "5")
b3 = Building.new("300 main st", "brownstone" , "3", "4")
b4 = Building.new("400 main st", "brownstone" , "3", "3")
b5 = Building.new("500 cool st", "modern" , "10", "100")
b1 = Building.new("600 main st", "modern" , "9", "90")
b1 = Building.new("700 main st", "modern" , "8", "80")



