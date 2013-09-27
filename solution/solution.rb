class Building
	attr_accessor :address, :style, :num_floors, :apartments

	def initialize(address, style, num_floors, apartments)
		@address = address
		@style = style
		@num_floors = num_floors
		@apartments = apartments
	end

	def to_s
		"Building: #{address}, #{style}, #{num_floors}, #{apartments}"
	end

	def apartments

	end
end

class Apartment
	attr_accessor :number, :rent, :sqft, :num_beds, :renters

	def initialize(number, rent, sqft, num_beds, renters)
		@number = number
		@rent = rent
		@sqft = sqft
		@num_beds = num_beds
		@renters = renters
	end

	def to_s
		"Apartment: #{number}, #{rent}, #{sqft}, #{num_beds}, #{renters}"
	end

	def renters

	end
end

class Renter
	attr_accessor :name, :age, :gender

	def initialize(name, age, gender)
		@name = name
		@age = age
		@gender = gender
		@rhash = Hash[name: name, age: age, gender: gender]
	end

	def to_s
		"Renter: #{name}, #{age}, #{gender}"
	end

	def hashname
		@rhash[:name]
	end

	def hashage
		@rhash[:age]
	end

	def hashgender
		@rhash[:gender]
	end

end

b1 = Building.new("380 Mt Auburn", "House", 2, 2)

a11 = Apartment.new(1, 1400, 3200, 2, 2)

a12 = Apartment.new(2, 1400, 3200, 3, 3)

r111 = Renter.new("George", 50, "male")

r112 = Renter.new("Anna", 40, "female")

r121 = Renter.new("Matt", 33, "male")

r122 = Renter.new("Erik", 32, "male")

r123 = Renter.new("Claire", 23, "female")
puts r123
puts r123.hashname
puts r123.hashage
puts r123.hashgender



