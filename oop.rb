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

class Dragon
    attr_reader :name, :rider, :color, :is_hungry, :counter
    
    def initialize(name, rider, color)
      # it should have a dynamic name attribute(string)
      @name      = name
      # it should have a dynamic rider attribute(string)
      @rider     = rider
      # it should have a dynamic color attribute(string)
      @color     = color
      # it should have a is_hungry attribute that is true by default
      @is_hungry = true
      @counter   = 0
    end
    # it should have a eat method.If the dragon eats 4 times, it is no longer hungry
    def eat
      @counter += 1
      @is_hungry = false if @counter >= 4
    end
  end
  
  puts 'Dragon Class Tests'
  puts '========================'
  
  puff = Dragon.new('Puff', 'Jeff', 'orange')
  puts puff.name == 'Puff'
  puts puff.rider == 'Jeff'
  puts puff.color == 'orange'
  puts puff.name == 'Jeff'
  
  puff.eat                      
  puts puff.is_hungry == true # true
  3.times { puff.eat }
  puts puff.is_hungry == false # true
  puff.eat
  puts puff.is_hungry == false # true

# Write a Hobbit class
class Hobbit
    attr_reader :name, :disposition, :age
  
    def initialize(name, disposition, age = 0)
      # it should have a dynamic name attribute(string)
      @name        = name
      # it should have a dynamic disposition attribute(string)
      @disposition = disposition
      # it should have an age attribute that defaults to 0
      @age         = age
    end
    # it should have an is_adult attribute(boolean) that is false by default. once a Hobbit is 33, it should be an adult
    def is_adult
      @age >= 33
    end
    # it should have an is_old attribute that defaults to false. Once a Hobbit is 101, it is old.
    def is_old
      @age >= 101
    end
    # it should have a celebrate_birthday method. When called, the age increases by 1
    def celebrate_birthday
      @age += 1
    end
    # it should have a has_ring attribute.If the Hobbit's name is "Frodo", true, if not, false.
    def has_ring
      @name == 'Frodo'
    end
  end
  
  puts 'Hobbit Class Tests'
  puts '========================'
  
  frodo = Hobbit.new("Frodo", "fearless")
  
  puts frodo.name
  puts frodo.disposition
  puts frodo.age
  puts frodo.is_adult
  puts frodo.is_old
  puts frodo.has_ring
  
  frodo.celebrate_birthday
  puts frodo.age
  puts frodo.is_adult
  puts frodo.is_old
  
  31.times { frodo.celebrate_birthday }
  puts frodo.age
  puts frodo.is_adult
  puts frodo.is_old
  
  111.times { frodo.celebrate_birthday }
  puts frodo.age
  puts frodo.is_adult
  puts frodo.is_old
  
  puts Hobbit.new("Samwise", "Brave").has_ring