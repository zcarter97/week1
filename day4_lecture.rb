require 'pry'




class App
	attr_accessor :person
	def initialize
		@person = init_person
	end
	def init_person
		puts "Enter your name:"
		name = gets.chomp
		puts "Enter your age:"
		age = gets.to_i
		@person = Person.new(name, age)	
	end

end





class Person
	attr_accessor :name, :age

	def initialize(name, age)
		@name = name
		@age = age
	end

	def increase_age(number)
		@age += number
	end
end

taylor = Person.new('Taylor', 24)
puts taylor.name
puts taylor.age
taylor.increase_age(1)


class Dog
	attr_accessor :name, :breed
	def initialize(name, breed)
		@name = name
		@breed = breed
	end

	#instance method
	def info
		puts "#{@name} is of breed: #{@breed}"
	end

	#class method
	def self.bark
		puts "WOOF!"
	end	
end

jake_the_dog = Dog.new('Jake', 'bulldog')
jake_the_dog.info
Dog.bark

class Cookies
	attr_accessor :gluten_free, :type, :size, :price

	def initialize
		puts "Is the cookie gluten_free?"
		@gluten_free = gets.chomp
		puts "what type of cookie is this?"
		@type = gets.chomp
		puts "whats the cookie's size?"
		@size = gets.chomp
		puts "How much does the cookie cost?"
		@price = gets.to_f
	end	

	def get_calories
		if @size == 'huge'
			puts "Calories is over 1000"
		else	
			puts "Calories dont matter here"
		end	 
	end	

	def self.eat
		puts "Enjoy your yummy calories!"
	end	
end

#cookie = Cookies.new
#Cookies.eat


# modules

module Math
	def add(num_1, num_2)
		num_1 + num_2
	end
	
	def subtract(num_1, num_2)
		num_1 - num_2
	end	
end	

class MathAssignment
	include Math

	def first_solution
		add(10, 50) + subtract(3, 10)
	end	
end	

assignment = MathAssignment.new
puts assignment.first_solution

# Inheritance

class Mammal
	attr_accessor :name, :age

	def initialize(name, age)
		@name = name
		@age = age
	end	

	def breathe
		puts "inhale and exhale"
	end
	
	def speak
		raise "You must over ride this method in the sub class"
	end	
end	

class Cat < Mammal
	attr_accessor :claws
	def initialize(name, age, claws)
		# Mammal.new(name, age)
		super(name, age)
		@claws = claws # figure this out later
	end	

	def speak
		puts "Meow"
	end
end

jax = Cat.new('Jax', 2, 'Sharp claws')
jax.breathe
jax.speak

# attr_reader

class Doggy
	attr_writer :name, :age

	def initialize(name, age)
		@name = name
		@age = age
	end	

	def change_(name)
		@name = name
	end
end

dog = Doggy.new('Rover', 2)
dog.change_name('Spike')
puts dog.name




































