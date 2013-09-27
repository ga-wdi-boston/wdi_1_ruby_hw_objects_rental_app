class Building
  attr_accessor :address, :style, :num_floors, :apartments
  def initialize(address, style, num_floors, num_apartments)
    @address = address
    @style = style
    @num_floors = num_floors
    @apartments = []
    # (1..num_apartments).each do |apt| 
    #   @apartments << Apartment.new(apt, rand())
  end
  def avg_age_of_tenants
    total_age, num_tenants = 0, 0.0
    @apartments.each do |apt| 
      apt.tenants.each do |tenant| 
        total_age += tenant.age
        num_tenants += 1
      end
    end
    total_age / num_tenants
  end
  def to_s
    "This #{num_floors}-floor, #{@style}-style building has #{apartment.length} apartments and is located at #{address}."
  end
end

class Apartment
  attr_accessor :number, :rent, :sqft, :num_beds, :tenants
  def initialize(number, rent, sqft, num_beds, tenants)
    @number = number
    @rent = rent
    @sqft = sqft
    @num_beds = num_beds
    @tenants = tenants
  end
  def people_per_sqft
  end
  def split_rent
  end
  def to_s
    "Apartment \##{@number} is #{sqft} square feet, has #{num_beds} bedrooms, costs $#{rent}/month, and is currently occupied by #{tenants.length} people."
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

a_building = Building.new('Main St', 'colonial', 3, 24)
# puts a_building
