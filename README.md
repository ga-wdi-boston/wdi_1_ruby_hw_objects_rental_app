#Title: Rental App

###Type:
- Homework

###Time Required: 
- 2 hours+

###Prerequisites:
- Ruby
- Hashes & Arrays
- Blocks
- OOP

###Objectives:
- Practice creating and initializing objects

###Activity:
You will be creating an app that models the rental process. The premise is that "Owners of buildings can rent apartments to potential tenants".

* "What types of objects might you have in an app that manages rentals?"
  * Settle on a list that includes building, person, and apartment
* "What types of things will each of these do (verbs)? Or what will define them (nouns)? And what type will each be?"

|Building - attribute|type|
|:----------|:-----------|
|address|string|
|style|string|
|has_doorman|boolean|
|is_walkup|boolean|
|num_floors|integer|
|apartments|array of apartment objects|

|Apartment - attribute|type|
|:----------|:-----------|
|price|decimal|
|is_occupied|boolean|
|sqft|integer|
|num_beds|integer|
|num_baths|integer|
|renters|array of person objects|

|Person (assume tenants or prospective tenants)|type|
|:----------|:-----------|
|name|string|
|age|integer|
|gender|string|
|apartment|apartment object|

* Write attr_accessors for each object
* Write initialize methods for each object
* Write to_s methods for each object

###Explanation
- Students are expected to build this from ground-up.

###Specification:
- Create a class for a Building that will have these attributes
  (address, ,style, has_doorman, is_walkup, mum_floors, apartments)
- Create a class for an Apartment that will have these attributes (address, style, has_doorman, is_walkup, num_floors, apartments)
- Create a class for a Person that will have these attributes (name,
  age, gender, apartment)
- Create one or more buildings, *Building instances*, by asking the user for the building's style,
  address and floor.
- In each of these buildings add apartments by asking the user for an
  apartment's square feet and number of bedrooms.
- In each of these apartments add people/renters by asking the user
  for a person's name, age and gender.
- For each building calculate the average age of people living in this
  building and print this value out.
- For each apartment calculate the density people per square foot  of the people living
  there. And print this value out.
- For each apartment in a building calculate how much each
  person/renter should pay for rent if they all split the rent
  equally. And print this value out.




