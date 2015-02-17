class Building
  attr_accessor :address,
                :style,
                :number_of_floors,
                :apartments

  def initialize(address, style, number_of_floors, apartments)
    @address = address.to_s
    @style = style.to_s
    @number_of_floors = number_of_floors.to_i
    @apartments = apartments
  end

  def building_avg_age
    cumulative_age = 0.0
    total_tenants = 0.0
    @apartments.each do |apartment|
      apartment.tenants.each do |tenant|
      cumulative_age += tenant.age
      total_tenants += 1
      end
    end
    return (cumulative_age / total_tenants)
  end
end

class Apartment
  attr_accessor :apartment_number,
                :rent,
                :square_feet,
                :number_of_tenants,
                :tenants

  def initialize(apartment_number, rent, square_feet, number_of_tenants, tenants)
    @apartment_number = apartment_number.to_i
    @rent = rent.to_i
    @square_feet = square_feet.to_i
    @number_of_tenants = number_of_tenants.to_i
    @tenants = tenants
  end

#ask David why it did not matter if I had (rent / tenants.length) versus (@rent / @tenants.length)
  def rent_split
    return (@rent / @tenants.length)
  end

  def apt_density
    return (@square_feet / @tenants.length)
  end
end

class Tenant
  attr_accessor :name,
                :age,
                :gender

  def initialize(name, age, gender)
    @name = name.to_s
    @age = age.to_i
    @gender = gender.to_s
  end
end


# creating 20 tenants
tenant1 = Tenant.new("Blake",18,"male")
tenant2 = Tenant.new("John",24,"male")
tenant3 = Tenant.new("Alex",30,"male")
tenant4 = Tenant.new("Keith",28,"male")
tenant5 = Tenant.new("Jack",36,"male")
tenant6 = Tenant.new("Daniel",42,"male")
tenant7 = Tenant.new("Brophy",31,"male")
tenant8 = Tenant.new("Corey",19,"male")
tenant9 = Tenant.new("Ben",48,"male")
tenant10 = Tenant.new("Garrett",53,"male")
tenant11 = Tenant.new("Hope",55,"female")
tenant12 = Tenant.new("Alison",45,"female")
tenant13 = Tenant.new("Olivia",37,"female")
tenant14 = Tenant.new("Hunter",27,"female")
tenant15 = Tenant.new("Emily",29,"female")
tenant16 = Tenant.new("Erin",18,"female")
tenant17 = Tenant.new("Jenna",22,"female")
tenant18 = Tenant.new("Susan",65,"female")
tenant19 = Tenant.new("Myra",62,"female")
tenant20 = Tenant.new("Linda",52,"female")


#creating 10 apartments 
apartment1 = Apartment.new("101",4200,2000,3,[tenant1,tenant2])
apartment2 = Apartment.new("102",2500,1400,2,[tenant3])
apartment3 = Apartment.new("103",3800,1800,2,[tenant4])
apartment4 = Apartment.new("104",5200,2500,3,[tenant5,tenant6])
apartment5 = Apartment.new("201",6500,2200,2,[tenant7])
apartment6 = Apartment.new("202",7000,2750,3,[tenant8,tenant9])
apartment7 = Apartment.new("203",6800,2500,3,[tenant10,tenant11])
apartment8 = Apartment.new("301",8500,3500,4,[tenant12,tenant13,tenant14])
apartment9 = Apartment.new("302",8200,3200,4,[tenant15,tenant16,tenant17])
apartment10 = Apartment.new("303",9500,4000,5,[tenant18,tenant19,tenant20])

building1 = Building.new("101 Main St", "Office", 24, [apartment1])
building2 = Building.new("101 Main St", "Office", 24, [apartment8])
building3 = Building.new("101 Main St", "Office", 24, [apartment8, apartment1])