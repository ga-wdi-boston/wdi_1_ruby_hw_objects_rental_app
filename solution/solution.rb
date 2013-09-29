class Building
  attr_accessor :address, :style, :num_floors
  attr_accessor :apartments

  def initialize(address, style, num_floors)
    @address = address
    @style = style
    @num_floors = num_floors.to_i
    @apartments = []
  end

  def average_renter_age
    total_ages = renters.map(&:age).reduce(:+)
    total_ages/renters.size
  end

  def renters
    apartments.map(&:renters).flatten
  end

  def density
    total = apartments.inject(0) do |sum, apt|
      sum += apt.density
    end
    total/apartments.size
  end
  
  def to_s
    "Building at #{address} has #{num_floors} floors and #{apartments.size} apartments"
  end
end

class Apartment
  attr_accessor :number, :rent, :sqft, :num_beds
  attr_accessor :renters

  def initialize(number, rent, sqft, num_beds)
    @number = number.to_i
    @rent = rent.to_i
    @sqft = sqft.to_i
    @num_beds = num_beds.to_i
    @renters = []
  end

  def fair_rent
    return 0 if no_renters?
    rent/renters.size
  end

  def density
    return 0 if no_renters?
    sqft/renters.size
  end

  def no_renters?
    renters.empty?
  end
  
  def to_s
    "Apartment #{number} has #{num_beds} beds and #{renters.size} renters:"
  end
end

class Person
  MALE_NAMES = ['Fred', 'Barney', 'BamBam', 'Moe', 'Larry', 'Curly']
  FEMALE_NAMES = ['Wilma', 'Betty', 'Pennym', 'Lucy', 'Imogene', 'Jackie']

  attr_accessor :name, :age, :gender

  def initialize(name, age, gender)
    @name = name
    @age = age.to_i
    @gender = gender
  end

  def to_s
    "#{name} is a #{age} year old #{gender}"
  end
end

# Create a building
b1 = Building.new("1 Main St", "brick", 4)

# Create the apartments is this building
base_rent = 1000
base_sqft = 1000
rent_mult = 0
sqft_mult = 0

6.times do |i|
  rent_mult = rand(7..10)/10.0
  sqft_mult = rand(7..10)/10.0
  # num_beds = rand(0..3)
  num_beds = 0 
  b1.apartments << Apartment.new(i, base_rent * rent_mult, base_sqft * sqft_mult, num_beds )
end


GENDER = ['female', 'male']

b1.apartments.each do |apt|
  (rand(0..6)).times do |i|
    age = 20 + rand(0..60)
    gender = GENDER[rand(0..1)]
    name = Person::MALE_NAMES[rand(Person::MALE_NAMES.size-1)] if gender == 'male'
    name = Person::FEMALE_NAMES[rand(0..Person::FEMALE_NAMES.size-1)] if gender == 'female'
    apt.renters << Person.new(name,age, gender)
    apt.num_beds = apt.renters.size
   end
end

puts "Building at #{b1}"
puts "The apartments are: "
b1.apartments.each do |apt|
  puts apt
  apt.renters.each do |renter|
    puts "\t#{renter}"
  end
end


puts "\nAverage age for the building at \"#{b1.address}\" is #{b1.average_renter_age}"

puts "This building has #{b1.apartments.size} apartments\n\n"

b1.apartments.each do |apt|
  puts "For apartment number #{apt.number} the rent is #{apt.rent}."
  puts "The fair rent for each of the #{apt.renters.size} renters is #{apt.fair_rent}\n"
  puts "Apartment density is (sqft/num of renters) )#{apt.sqft}/#{apt.renters.size} = #{apt.density} sqft/renter\n\n"
end

puts "The building density is #{b1.density} sqft/renter"
