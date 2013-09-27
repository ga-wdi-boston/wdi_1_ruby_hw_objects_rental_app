class Building
  attr_accessor :address, :style, :num_floors, :apartments
  def initialize(address, style, num_floors, apartments)
    @address = address
    @style = style
    @num_floors = num_floors
    @apartments = apartments
  end
  def to_s
    "This #{num_floors}-floor, #{@style}-style building has #{apartment.length} apartments and is located at #{address}."
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
    "Apartment \##{@number} is #{sqft} square feet, has #{num_beds} apartments, costs $#{rent}/month, and is occupied by #{renters.length} people."
  end
end

class Person
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