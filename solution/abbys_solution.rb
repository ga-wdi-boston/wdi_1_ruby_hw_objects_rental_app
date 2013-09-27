class Building

  attr_accessor :building_name, 
                :address, 
                :style, 
                :num_of_floors, 
                :num_of_apartments, 
                :apartments,
                :description,
                :building_average_age

  def initialize(name)
    @building_name = name
    randomize_address
    randomize_style
    @num_of_floors = (2 + rand(4))
    @num_of_apartments = @num_of_floors * (rand(4) + 1)
    auto_populate_apartments
    @average_age = average_age
    @description = to_s
  end

  def to_s
    @description = "#{@building_name}, #{@address}, #{@num_of_apartments} apartments, built in the #{@style} style, with #{@num_of_floors} floors. Average age: #{@building_average_age}"
  end

  def auto_populate_apartments
    @apartments = []
    for x in 1..@num_of_apartments do
    a = Apartment.new(@building_name, x)
    @apartments.push(a)
    end
    return @apartments
  end

  def randomize_style
    styles = ["Art Deco", "Colonial Revival", "Mid-Century Modern", "Gothic Revival", "Victorian"]
    @style = styles[rand(styles.length)]
  end

  def randomize_address
    num = 350 + rand(200)
    streets = %w(Hancock Newbury Woodward Massachusetts Commonwealth Main)
    endings = %w(Ave St Way)
    @address = "#{num} #{streets[rand(streets.length)]} #{endings[rand(endings.length)]}"
  end
  
  def average_age
    building_total_age = 0
    building_total_renters = 0

    @apartments.each do |x|
      building_total_age += x.total_age 
      building_total_renters += x.total_renters
    end

    @building_average_age = building_total_age / building_total_renters
    return @building_average_age
  end

end

class Apartment

  attr_accessor :number,
                :rent,
                :square_feet,
                :bedrooms,
                :renters,
                :description, 
                :building,
                :apartment_name,
                :population,
                :average_age,
                :total_age,
                :total_renters
  
  def initialize(buiding, number)
    @building = building
    @number = number
    @apartment_name = "#{@building} #{@number}"
    auto_square_feet
    auto_rent
    @renters = auto_populate
    @population = @renters.length
    @total_renters = @population
    @total = total_age
    @description = to_s
    end

  def to_s
    @description = "#{@apartment_name}, #{@square_feet} square feet, rent: $#{@rent} per month, #{@population} renters, average age: #{average_age}"
    return @description
  end

  def total_age
    @total_age = 0
    @renters.each do |renter|
    x = renter.age
    @total_age += x
    end
    return @total_age
  end

  def average_age
    @average_age = total_age / @total_renters
  end

  def auto_populate
    how_many_renters = @square_feet / 300
    @renters = []

    how_many_renters.times do
      name = random_name
      new_renter = Person.new(name, @apartment_name)
      @renters << new_renter
      end
    return @renters
  end

  def random_name
    first = %w(Kate John Bob Larry Ryan Mike Cori Abby Lana Rob Jon Sara Amy)
    last = %w(McLaughlin Fischer Powell Ruddock Clement Mazzotti Tolbert Allen Golden Brendzel Cleveland)
    @name = "#{first[rand(first.length)]} #{last[rand(last.length)]}"
  end

  def auto_square_feet
    @square_feet = 400 + rand(400)
  end

  def auto_rent
    @rent = @square_feet * (2.5 + rand(1.0))
  end

  def rent_per_person
    @rent / @renters.length
  end

  def people_in_apartment
    @renters.each do |x|
      puts x
    end
  end

end

class Person

  attr_accessor :name, 
                :age,
                :gender,
                :apartment,
                :description

  def initialize(name, apartment)
    @name = name
    @apartment = apartment
    # randomize_name
    randomize_gender
    randomize_age
    @description = to_s
  end

  # def randomize_name
  #   first = %w(Kate John Bob Larry Ryan Mike Cori Abby Lana Rob Jon Sara Amy)
  #   last = %w(McLaughlin Fischer Powell Ruddock Clement Mazzotti Tolbert Allen Golden Brendzel Cleveland)
  #   @name = "#{first[rand(first.length)]} #{last[rand(last.length)]}"
  # end

  def randomize_gender
    genders = %w(male female androgynous genderqueer butch femme male female male female male female male female male female)
    @gender = genders[rand(genders.length)]
  end

  def randomize_age
    @age = rand(20) + rand(20) + rand(20)
  end
  
  def to_s
    @description = "#{@name}, #{@age} years old, identifies as #{@gender}, lives in #{@apartment}."
    return @description
  end

  def age
    @age
  end

end


b1 = Building.new("Highland Towers")
b2 = Building.new("Binghamton Terrace")
b3 = Building.new("Crabsbury Gardens")

puts b1
puts b1.apartments

puts b2
puts b2.apartments

puts b3
puts b3.apartments

