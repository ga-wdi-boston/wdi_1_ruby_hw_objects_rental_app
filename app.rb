class Person
	attr_accessor :name,
								:age,
								:gender

	def initialize(name, age, gender)
		@name = name
		@age = age
		@gender = gender
	end
end

class Building
	attr_accessor	:address,
								:style,
								:num_floors,
								:apartments

	def initialize(address, style, num_floors, apartments)
		@address = address
		@style = style
		@num_floors = num_floors
		@apartments = apartments
	end

	def avg_age
		sum = 0
		counter = 0
		@apartments.each do |x|
			x.renters.each do |y|
				counter += 1
				sum += y.age
			end
		end
		return sum / counter
	end
end

class Apartment
	attr_accessor	:number,
								:rent,
								:sqft,
								:num_beds,
								:renters

	def initialize(number, rent, sqft, num_beds, renters)
		@number = number
		@rent = rent
		@sqft = sqft
		@num_beds = num_beds
		@renters = renters
	end

	def sqftpp
		return @sqft / @renters.length
	end

	def rentpp
		return rent / renters.length
	end
end

building1 = Building.new("12 park avenue", "post-war", 22, [Apartment.new(1, 2300, 1000, 2, [Person.new("bryce", 28, "male"), Person.new("sue", 33, "female")]), Apartment.new(2, 2600, 900, 1, [Person.new("tom", 15, "male")])])
building2 = Building.new("14 park avenue", "gothic", 33, [Apartment.new(1, 2300, 1000, 2, [Person.new("mary", 55, "female"), Person.new("bill", 31, "male")]), Apartment.new(2, 2500, 1500, 2, [Person.new("sally", 26, "female")])])


puts building1.avg_age
puts building2.avg_age

puts building1.apartments[0].sqftpp
puts building1.apartments[1].sqftpp
puts building2.apartments[0].sqftpp
puts building2.apartments[1].sqftpp

puts building1.apartments[0].rentpp
puts building1.apartments[1].rentpp
puts building2.apartments[0].rentpp
puts building2.apartments[1].rentpp