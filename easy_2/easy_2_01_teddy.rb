puts "Teddy is #{rand(20..200)} years old!"

class Person
  attr_reader :name, :age
  
  def initialize(name='Teddy')
    if name == 'Teddy'
      @name = name
    else
      print 'What is your name? '
      @name = gets.chomp
    end
    @age = rand(20..200)
  end
  
  
  def to_s
    "My name is #{name} and I am #{age} years old!"
  end
end

person1 = Person.new('Kesley')
person2 = Person.new

puts person1
puts person2