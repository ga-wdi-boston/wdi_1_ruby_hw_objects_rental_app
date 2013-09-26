#Title: Rental App

###Type:
- Lab / Homeowrk

###Time Required: 
- 2 hours+

###Prerequisites:
- Ruby
- Hashes & Arrays
- Blocks
- OOP
- Multi-file project (require_relative)

###Objectives:
- Practice creating and initializing objects

###Activity:
As a class, you will be creating an app that models the rental process. The premise is that "Owners of buildings can rent apartments to potential tenants". This app should be created using a code-along style.

* Ask students "What types of objects might you have in an app that manages rentals?"
  * Settle on a list that includes building, person, and apartment
* Ask students "What types of things will each of these do (verbs)? Or what will define them (nouns)? And what type will each be?"

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
* Write a main.rb file that allows you to build and add new objects

###Explanation
- This is a multi-file project that has a main file for working with the objects, and each class as separate files.  Students are expected to build this from ground-up, and perhaps starting with the main.rb file.

###Specification:
- n/a

###Post-mortem:
- What worked?
- Student misunderstandings?
