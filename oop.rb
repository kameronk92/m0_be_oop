# Write a class called Unicorn
# it should have a dynamic name attribute
# it should have a color attribute, that is silver by default
# it should have a method called "say" that returns whatever 
# string is passed in, with "*~*" at the beginning and end of the string

class Unicorn
    attr_reader :name, :color

    def initialize(name, color = silver)
        @name = name
        @color = color
    end
    
    def unicorn_case(phrase)
        "*~* #{phrase} *~*"
    end
   unicorn1 = Unicorn.new("Dante", "blue")
   p unicorn1
   p unicorn1.unicorn_case("stuffs")
end


#  Write a class called Vampire
#  it should have a dynamic name attribute
#  it should have a pet attribute, that is a bat, by default BUT it could be dynamic if info is passed in initially
#  it should have a thirsty attribute, that is true by default
#  it should have a drink method. When called, the thirsty attribute changes to false

class Vampire
    attr_reader :name, :pet, :thirsty
    def initialize(name, pet = "bat")
        @name = name
        @pet = pet
        @thirsty = true
    end

    def drink
        @thirsty = false
    end
end

vamp1 = Vampire.new("Lazlo")
vamp1.drink

p vamp1.name
p vamp1.pet
p vamp1.thirsty

#  Write a Dragon class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic rider attribute (string)
#  it should have a dynamic color attribute (string)
#  it should have a is_hungry attribute that is true by default
#  it should have a eat method. If the dragon eats 4 times, it is no longer hungry

class Dragon
    attr_reader :name, :rider, :color, :hungry
    def initialize(name, rider, color, is_hungry = true)
        @name = name
        @rider = rider
        @color = color
        @is_hungry = is_hungry
    end
    def eat()
        count = 0
        name = :eat

        TracePoint.trace(:call) do |t|
            count += 1 if t.method_id == name
        
        if count >= 4
            @is_hungry = false
        end
    end
    end
    end
dragon1 = Dragon.new("jake", "fin", "silver")

dragon1.eat()
dragon1.eat()
dragon1.eat()

p dragon1

#  Write a Hobbit class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic disposition attribute (string)
#  it should have an age attribute that defaults to 0
#  it should have a celebrate_birthday method. When called, the age increases by 1
#  it should have an is_adult attribute (boolean) that is false by default. once a Hobbit is 33, it should be an adult
#  it should have an is_old attribute that defaults to false. once a Hobbit is 101, it is old.
#  it should have a has_ring attribute. If the Hobbit's name is "Frodo", true, if not, false.

class Hobbit
    attr_reader :name, :disposition, :age, :is_adult, :is_old, :has_ring
    def initialize(name, disposition, age = 0)
        @name = name
        @disposition = disposition
        @age = age
        @is_adult = false
        if age >= 33
            @is_adult = true
        end
        @is_old = false
        if age >= 101
            @is_old = true
        end
        @has_ring = false
        if name == "Frodo"
            @has_ring = true
        end
    end

    def celebrate_birthday
        @age = age + 1
        if age > 32
            @is_adult = true
        end
        if age > 100
            @is_old = true
        end
    end
    end

saam = Hobbit.new("Saam", "loyal", 31)
saam.celebrate_birthday
p saam
saam.celebrate_birthday
p saam
saam.celebrate_birthday
p saam
saam.celebrate_birthday
p saam
saam.celebrate_birthday
p saam
saam.celebrate_birthday
p saam

frodo = Hobbit.new("Frodo", "persistent", 28)
p frodo

bilbo = Hobbit.new("Bilbo", "super old", 300)
p bilbo

