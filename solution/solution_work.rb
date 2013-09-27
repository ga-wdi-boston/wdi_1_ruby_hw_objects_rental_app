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

  # def make_age_array(apartment_array)
  #   age_array = []
  #   apartment_array.each {|person| age_array << person.age}
  #   age_array
  # end

########
  # def make_person_array
  #   person_array = []
  #   @apartments.each {|apartment| person_array << apartment.people}
  #   age_array = []
  #   return person_array #.each {|person| age_array << person.age}
  #   #age_array
  # end
########




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
    @sqft = sqft.to_i
    @beds = beds.to_i
    @people = people
  end


  # def make_age_array(apartment_array)
  #   age_array = []
  #   apartment_array.each {|person| age_array << person.age}
  #   age_array
  # end

  #####2222222
  # def find_average(ages)
  #   sum = 0
  #   ages.each { |b| sum += b }
  #   average = sum / ages.length
  #   puts average
  # end

  # def average_ages
  #   ages = []
  #   @people.each {|person| ages << person.age}
  #   find_average(ages)
  # end
#####2222222
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
 # def find_average(ages)
 #    sum = 0
 #    ages.each { |b| sum += b }
 #    average = sum / ages.length
 #    puts average
 #  end

 #  def ages_array(people_in_build)
 #    ages = []
 #    people_in_build.each {|person| ages << person.age}
 #    find_average(ages)
 #  end
end

person1 = Person.new("Mike", 27, "male")
person2 = Person.new("Nicole", 22, "female")
person3 = Person.new("Laraine", 24, "female")
person4 = Person.new("Bob", 25, "male")
person5 = Person.new("June", 24, "female")
person6 = Person.new("Steve", 27, "male")
# person7 = Person.new("Julie", 22, "female")
# person8 = Person.new("Amy", 23, "female")
# person9 = Person.new("Tom", 25, "male")
# person10 = Person.new("Janet", 24, "female")
# person11 = Person.new("Alfred", 27, "male")
# person12 = Person.new("Susan", 22, "female")
# person13 = Person.new("Loretta", 23, "female")
# person14 = Person.new("Tim", 25, "male")
# person15 = Person.new("Mary", 24, "female")

apartment1 = Apartment.new(1, 1000, 100, 1, person1)
apartment2 = Apartment.new(2, 2000, 200, 2, [person2, person3])
apartment3 = Apartment.new(3, 3000, 300, 3, [person4, person5, person6])
# apartment4 = Apartment.new(4, 4000, 400, 4, [array of persons])
# apartment5 = Apartment.new(5, 5000, 500, 5, [array of persons])

building1 = Building.new("1 Main St", "Cool", 1, [apartment1, apartment2])
building2 = Building.new("2 Main St", "Super Cool", 2, [apartment2, apartment3])

#########22222222    puts apartment2.average_ages
# p building1.apartment_array
# people_in_build = building1.make_person_array
# ages_array(people_in_build)
#########     p building1.make_person_array
array_of_apartments = building2.apartments

people_array = []
array_of_apartments.each {|apartment| people_array << apartment.people}

flat_array = people_array.flatten
age_array = []

flat_array.each {|person| age_array << person.age}

p age_array

sum = 0
    age_array.each { |b| sum += b }
    average = sum / age_array.length
    puts average
# age_array = []
# age_array = people_array.each {|person_num, info| puts person_num, person_num.class, info, info.class}




# last_ages_array = []
# last_array.each {|person| puts last_ages_array << person.age}

# p building1.make_age_array(people_in_build)
# sum = 0
# total_ages.each { |b| sum += b }
# average = sum / total_ages.length
# puts average


# building3 = Building.new("3 Main St", "Cool", 3, [array of apartments])

# b1 = Building.new("1 Main St", "Cool", 1, apartment1)
# p b1