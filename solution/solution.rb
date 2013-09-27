class Building
  attr_accessor :address
  attr_accessor :style
  attr_accessor :num_floors
  attr_accessor :apartments

  def initialize(address, style, num_floors, apartments)
    @address = address.to_s
    @style = style.to_s
    @num_floors = num_floors.to_i
    @apartments = apartments
  end

def rent_per_building
  apartment_rents = []
  @apartments.each {|apartment| apartment_rents << "Rent per person at Apartment ##{apartment.number} is #{apartment.rent_per_person}"}
  return apartment_rents
end

def average_age
  people_array = []
  @apartments.each {|apartment| people_array << apartment.people}
  flat_array = people_array.flatten
  age_array = []
  flat_array.each {|person| age_array << person.age}
  sum = 0
  age_array.each { |b| sum += b }
  average = sum / age_array.length
  average
end

end

class Apartment
  attr_accessor :number
  attr_accessor :rent
  attr_accessor :sqft
  attr_accessor :beds
  attr_accessor :people

  def initialize(number, rent, sqft, beds, people)
    @number = number.to_i
    @rent = rent.to_i
    @sqft = sqft
    @beds = beds.to_i
    @people = people
  end

  def peeps_per_ft
    (@people.count.to_i)/(@sqft.to_f)
  end

  def rent_per_person
    @rent.to_i/(@people.count.to_i)
  end
end

class Person
  attr_accessor :name
  attr_accessor :age
  attr_accessor :gender

  def initialize(name, age, gender)
    @name = name.to_s
    @age = age
    @gender = gender.to_s
  end

end

person1 = Person.new("Mike", 27, "male")
person2 = Person.new("Nicole", 22, "female")
person3 = Person.new("Laraine", 24, "female")
person4 = Person.new("Bob", 25, "male")
person5 = Person.new("June", 24, "female")
person6 = Person.new("Steve", 27, "male")
person7 = Person.new("Julie", 22, "female")
person8 = Person.new("Amy", 23, "female")
person9 = Person.new("Tom", 25, "male")
person10 = Person.new("Janet", 24, "female")
person11 = Person.new("Alfred", 27, "male")
person12 = Person.new("Susan", 22, "female")
person13 = Person.new("Loretta", 23, "female")
person14 = Person.new("Tim", 80, "male")
person15 = Person.new("Mary", 70, "female")

apartment1 = Apartment.new(1, 2000, 100, 1, [person1])
apartment2 = Apartment.new(2, 2500, 250, 2, [person2, person3])
apartment3 = Apartment.new(3, 3000, 425, 3, [person4, person5, person6])
apartment4 = Apartment.new(4, 3500, 750, 4, [person7, person8, person9, person10])
apartment5 = Apartment.new(5, 4000, 1000, 5, [person11, person12, person13, person14, person15])

building1 = Building.new("1 Main St", "Cool", 1, [apartment1])
building2 = Building.new("2 Main St", "Super Cool", 2, [apartment2, apartment3])
building3 = Building.new("3 Main St", "Super Duper Cool", 3, [apartment3, apartment4, apartment5])
building4 = Building.new("4 Main St", "Wicked Super Duper Cool", 3, [apartment3, apartment4, apartment5, apartment2, apartment1])

puts "The Average age of #{building1.address} is #{building1.average_age}."
puts "The Average age of #{building2.address} is #{building2.average_age}."
puts "The Average age of #{building3.address} is #{building3.average_age}."
puts "The Average age of #{building4.address} is #{building4.average_age}."

puts "The people per square feet at Apartment ##{apartment1.number} is #{apartment1.peeps_per_ft}"
puts "The people per square feet at Apartment ##{apartment2.number} is #{apartment2.peeps_per_ft}"
puts "The people per square feet at Apartment ##{apartment3.number} is #{apartment3.peeps_per_ft}"
puts "The people per square feet at Apartment ##{apartment4.number} is #{apartment4.peeps_per_ft}"
puts "The people per square feet at Apartment ##{apartment5.number} is #{apartment5.peeps_per_ft}"

# puts "The breakdown of rent for #{building1.address} is #{building1.rent_per_person}"
puts "For #{building1.address}...#{building1.rent_per_building}"
puts "For #{building2.address}...#{building2.rent_per_building}"
puts "For #{building3.address}...#{building3.rent_per_building}"
puts "For #{building4.address}...#{building4.rent_per_building}"