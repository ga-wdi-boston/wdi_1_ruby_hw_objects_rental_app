class Building

  attr_accessor :building_name, 
                :address, 
                :style, 
                :num_of_floors, 
                :num_of_apartments, 
                :apartments,
                :description,
                :building_average_age,
                :average_rent,
                :list_of_renters
                :to_s

  def initialize(name)
    @building_name = name
    @address = randomize_address
    @style = randomize_style
    @num_of_floors = (2 + rand(4))
    @num_of_apartments = @num_of_floors * (rand(4) + 1)
    @apartments = auto_populate_apartments
    @building_average_age = average_age
    @average_rent = average_rent
    @list_of_renters = print_renter_list
    @building_average_age = average_age
    @description = to_s
    @to_s = to_s
  end

  def to_s
    @description = "#{@building_name}, #{@address}, #{@num_of_apartments} apartments, built in the #{@style} style, with #{@num_of_floors} floors. Average age: #{@building_average_age}. Average rent: $#{@average_rent}"
  end

  def average_rent
    total_rent = 0
    @apartments.each do |x|
      total_rent += x.rent
    end
    @average_rent = total_rent / @num_of_apartments
    return @average_rent
  end

  def print_renter_list
    @list_of_renters = []
    @apartments.each do |x|
      @list_of_renters << x.renter_list
    end
    return @list_of_renters
  end

  def auto_populate_apartments
    @apartments = []
    for x in 1..@num_of_apartments do
    a = Apartment.new(x)
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
                :apartment_name,
                
                :average_age,
                :total_age,

                :description,
                :to_s,

                :population,
                :total_renters,
                :renter_list,
                :rent_per_person,
                :density

  
  def initialize(number)
    @number = number
    @square_feet = auto_square_feet
    @rent = auto_rent
    @renters = auto_populate(@number)
    @population = @renters.length
    @total_renters = @population
    @total_age = total_age
    @average_age = average_age


    @renter_list = renter_list
    @density = density
    @rent_per_person = rent_per_person

    @description = to_s
    @to_s = to_s

    end

  def to_s
    @description = "#{@number}, #{@square_feet} square feet, rent: $#{@rent} per month, #{@population} renters, average age: #{average_age}, density #{density} renters per square foot, rent per person: $#{rent_per_person}."
  end

  def rent_per_person
    @rent_per_person = @rent / @total_renters
  end

  def density
    @density = @total_renters.to_f / @square_feet.to_f
  end

  def renter_list
    @renter_list = []
    @renters.each do |x|
      @renter_list << x.description
    end
    return @renter_list
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
    @average_age = @total_age / @total_renters
  end

  def auto_populate(number)
    how_many_renters = @square_feet / 300
    @renters = []

    how_many_renters.times do
      name = random_name
      new_renter = Person.new(number)
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

end

class Person

  attr_accessor :name, 
                :age,
                :gender,
                :apartment,
                :description,
                :job
                :to_s

  def initialize(apartment)
    @name = randomize_name
    @gender = randomize_gender
    @age = randomize_age
    @job = randomize_job
    @apartment = apartment
    @description = to_s
    @to_s = to_s
  end

  def randomize_name
    first = %w(Kate John Bob Larry Ryan Mike Cori Abby Lana Rob Jon Sara Amy)
    last = %w(McLaughlin Fischer Powell Ruddock Clement Mazzotti Tolbert Allen Golden Brendzel Cleveland)
    @name = "#{first[rand(first.length)]} #{last[rand(last.length)]}"
  end

  def randomize_gender
    genders = %w(male female androgynous genderqueer butch femme male female male female male female male female male female)
    @gender = genders[rand(genders.length)]
  end

  def randomize_age
    @age = rand(20) + rand(20) + rand(20)
  end

  def randomize_job
    jobs = %w(teacher soldier programmer hacker cop firefighter MMA-fighter carpenter nurse physician student)
    @job = jobs[rand(jobs.length)]
  end
  
  def to_s
    @description = "Apt #{@apartment}: #{@name}, #{@age}-year old #{job}, identifies as #{@gender}."
  end

end


b1 = Building.new("Highland Towers")
b2 = Building.new("Binghamton Terrace")
b3 = Building.new("Crabsbury Gardens")

puts b1
puts b1.apartments
puts b1.list_of_renters

puts b2
puts b2.apartments
puts b2.list_of_renters

puts b3
puts b3.apartments
puts b3.list_of_renters