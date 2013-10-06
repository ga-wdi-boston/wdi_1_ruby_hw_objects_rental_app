class Building
  attr_accessor :address, :style, :num_floors, :apartments
  
  def initialize(address, style, num_floors)
    @address = address
    @style = style
    @num_floors = num_floors
    @apartments = []
  end
  
  def avg_age_of_tenants
    tenants.map(&:age).reduce(:+) / tenants.size.to_f
  end

  def tenants
    apartments.map(&:tenants).flatten
  end

  def sqft_per_tenant
    total = apartments.inject(0) do |sum, apt|
      sum + apt.sqft_per_person
    end
    total / apartments.length
  end

  def to_s
    "This #{num_floors}-floor, #{@style} building has #{apartments.length} apartments and is located at #{address}."
  end
end

class Apartment
  attr_accessor :number, :rent, :sqft, :num_beds, :tenants

  def initialize(number, rent, sqft, num_beds)
    @number = number
    @rent = rent
    @sqft = sqft
    @num_beds = num_beds
    @tenants = []
  end

  def split_rent
    @tenants.empty? ? 0 : @rent / @tenants.length.to_f
  end

  def sqft_per_person
    @tenants.empty? ? 0 : @sqft / @tenants.length.to_f
  end

  def to_s
    "Apartment \##{@number} is #{'%.2f' % sqft} square feet, has #{num_beds} bedrooms, costs $#{'%.2f' % rent}/month, and is currently occupied by #{@tenants.length} people."
  end
end

class Person
  MALE_NAMES   = %W(Andrew Bob Chris David Ed Fred George)
  FEMALE_NAMES = %w(Alice Beth Caroline Dana Erica Farren Gina)

  attr_accessor :name, :age, :gender

  def initialize(name, age, gender)
    @name = name
    @age = age
    @gender = gender
  end

  def to_s
    "Name: #{@name} Age: #{@age} Gender: #{@gender}"
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
  num_beds = 0 
  b1.apartments << Apartment.new(i, base_rent * rent_mult, base_sqft * sqft_mult, num_beds )
end


GENDER = ['female', 'male']

b1.apartments.each do |apt|
  (rand(0..6)).times do |i|
    age = 20 + rand(0..60)
    gender = GENDER.sample
    name = gender == 'male' ? Person::MALE_NAMES.sample : Person::FEMALE_NAMES.sample
    apt.tenants << Person.new(name, age, gender)
    apt.num_beds = apt.tenants.length
   end
end

puts b1
puts "Available apartments: "
b1.apartments.each do |apt|
  puts apt
  apt.tenants.each do |tenant|
    puts "\t#{tenant}"
  end
end


puts "\nAverage age for the building at \"#{b1.address}\" is #{'%.2f' % b1.avg_age_of_tenants}"

puts "This building has #{b1.apartments.length} apartments\n\n"

b1.apartments.each do |apt|
  puts "For apartment number #{apt.number} the rent is #{'$%.2f' % apt.rent}."
  puts "The fair rent for each of the #{apt.tenants.length} tenants is #{'$%.2f' % apt.split_rent}\n"
  puts "Apartment density is (sqft/num of renters) #{apt.sqft}/#{apt.tenants.length} = #{'%.2f' % apt.sqft_per_person} sqft/tenant\n\n"
end

puts "The building density is #{'%.2f' % b1.sqft_per_tenant} sqft/tenant"
