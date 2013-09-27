class Building
  attr_accessor :address, :style, :num_floors, :apartments
end

class Apartment
  attr_accessor :number, :rent, :sqft, :num_beds, :renters
end

class Person
  attr_accessor :name, :age, :gender
end