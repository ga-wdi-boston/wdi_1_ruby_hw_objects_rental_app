require 'pry'
require 'rainbow'
require_relative 'building'
require_relative 'apartment'
require_relative 'person'

building = nil

print "Build (p)erson or (a)partment or (b)uilding or (q)uit: "
response = gets.chomp.downcase
while response != 'q'
  if response == 'p'
    print "Name: "
    name = gets.chomp
    print "Age: "
    age = gets.to_i
    print "Gender: "
    gender = gets.chomp
    print "What apt do you wish to live: "
    apt = gets.chomp
    building.apartments[apt].renters << Person.new(name, age, gender)
  elsif response == 'a'
    print "Name: "
    name = gets.chomp
    print "SqFt: "
    sqft = gets.to_i
    building.apartments[name] = Apartment.new(name, sqft, 0, 0)
  elsif response == 'b'
    building = Building.new('10E21ST', 'GA', false, false, 10)
  end

  print "Build (p)erson or (a)partment or building or (q)uit: "
  response = gets.chomp.downcase
end

binding.pry
