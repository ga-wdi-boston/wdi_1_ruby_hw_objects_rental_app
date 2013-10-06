
class Building 
	attr_accessor :address , :style , :num_floors , :apartments 

	def initialize(address, style, num_floors, apartments)
		@address = address.to_s
		@style = style.to_s
		@num_floors = num_floors.to_i
		@apartments = []
	end

	def to_s
		"I'm a #{style}building on #{address} and I have #{num_floors} floors and I have a total of #{apartments} in me. Yaaay!"
	end 

	def average_age
		counter= 0
		sum_ages= 0
		@apartments.each do |apartment|
			apartment.renters.each do |renter|
				sum_ages+=renter.age 
				counter+=1
			end
		end
		return sum_ages.to_f/ counter.to_f
	end

end

class Apartment 
	attr_accessor :number , :rent , :sqft , :num_beds, :renters

	def initialize(number, rent, sqft, num_beds, renters)
		@number = number.to_i
		@rent = rent.to_i
		@sqft = sqft.to_i
		@num_beds = num_beds.to_i
		@renters = []
	end

	def to_s
		"I'm apartment number #{number} and I'm #{sqft}sqft with a total of #{num_beds} bedrooms. 
		I have #{renters} tenants living in me at the moment, and they pay #{rent} to live in me! "
	end
end

class Person 
	attr_accessor :name , :age , :gender 

	def initialize(name, age, gender)
		@name = name.to_s
		@age = age.to_i
		@gender = gender.to_s
	end

	def to_s
		"Hi! I'm #{name} and I'm a #{gender} who is #{age} years old. Nice to meet you!"
	end
end 


p1 = Person.new("Amal", 26, "woman")
p2 = Person.new("Keyse", 35, "man")
p3 = Person.new("Sofia", 32, "woman")
p4 = Person.new("Amal", 26, "woman")
p5 = Person.new("Farhiya", 29, "woman")
p6 = Person.new("Mukhtar", 28, "man")
p7 = Person.new("Adan", 27, "man")
p8 = Person.new("Aniso", 32, "woman")
p9 = Person.new("Shukri", 28, "woman")
p10 = Person.new("Zahra", 24, "woman")
p11 = Person.new("Neeneele", 29, "man")
p12 = Person.new("Farah", 35, "man")
p13 = Person.new("Sharmarke", 34, "man")
p14 = Person.new("Fatima", 26, "woman")
p15 = Person.new("Roda", 53, "woman")
p16 = Person.new("Barni", 21, "woman")
p17 = Person.new("Abdi", 14, "man")
p18 = Person.new("Maryan", 21, "woman")
p19 = Person.new("Anis", 32, "man")
p20= Person.new("Abdirahman", 57, "man")


a1 = Apartment.new(101, 2000, 1800, 4, [p1, p2, p3])
a2 = Apartment.new(102, 2000, 1800, 4, [p5,p6,p7])
a3 = Apartment.new(202, 1800, 1500, 3, [p9])
a4 = Apartment.new(203, 1800, 1500, 3, [p11,p12])
a5 = Apartment.new(204, 1700, 1400, 3, [p13,p14])
a6 = Apartment.new(205, 1500, 1200, 3, [p15,p16])
a7 = Apartment.new(301, 1200, 1000, 2, [p17,p18])
a8 = Apartment.new(101, 1100, 950, 2, [p19,p20])
a9 = Apartment.new(102, 900, 800, 1, [p4])
a10 = Apartment.new(103, 850, 700, 1, [p8])
a11 = Apartment.new(104, 770, 600, 1, [p10])


b1 = Building.new("100 main st", "modern" , "3", [a1,a2,a3,a4,a5,a6])
b2 = Building.new("200 main st", "brownstone" , "3", [a7,a8,a9])
b3 = Building.new("300 main st", "brownstone" , "3", [a10,a11])


puts "#{b1.address} and age is #{b1.average_age}"
