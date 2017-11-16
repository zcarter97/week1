# integer
x = 1
# string
str = 'hello world'
#boolean
x = true
#float
x =1.4

# math operator
x = 1 + 25

x = 'hello ' + 'world'

# constant variable
FOO = 1
FOO = 2
puts FOO

# local variable
foo = 2
foo = 3

# instance variable
@foo = 3

puts FOO
puts foo
puts @foo

def print_foo(bar)
	puts FOO
	puts bar
	puts @foo
end	

print_foo(foo)

# single quotes
puts 'hello world'
#double quotes
puts "hello world"

greetings = 'hello'
name = 'world'
puts greetings + ' ' + name
# string interpolation
puts "#{greetings} #{name}"

#methods

def hello_world
	puts 'hello world'
end	
hello_world

def hello(planet)
	puts "hello #{planet}"
end
hello('mars')

def triple_my_number(number)
	number * 3
end
puts triple_my_number(2)

def odd_or_even(number)
	if number % 2==0
		'even'
	else
		'odd'
	end	
end	
puts odd_or_even(4)
puts odd_or_even(triple_my_number(3))

# conditionals
x = true
if x
	puts x
end	

if x
	puts 'its true'
else
	puts 'its a lie'	
end

num = 1
if num <= 0
	puts 'the number is to low'
elsif num > 3 && num < 7
	puts 'the number is just right'
else
	puts 'the number is to high'
end








# case

number = 1
case number
when 1,2
	puts number
when 3
	puts 'Three'
else
	puts 'To High'
end

# ternary

if num % 2 == 0
	a = true
else
	a = false
end

a = num % 2 == 0 ? true : false
a = num % 2 == 0 ? (num + 1) : (num + 2)

# assignment = conditionals ? if : else

number = 2
def alter(num)
	num % 2 == 0 ? (num + 1) : (num + 3)
end

new_number = alter(number)
new_new_number = alter(alter(new_number))
puts alter(new_new_number)

# loops 
# while loop
x = 0
while x <= 3
	puts x
	x = x + 1
end	
# until loop
x = 0 
until x > 3
	puts x
	x += 1
end
# for loop
for x in (0..5)
	puts x 
end

# each loop
# (0..5) = [0,1,2,3,4,5]
(0..5).each do |x|
	puts x
end	

# map loop
arr = [1,2,3,4,5]
new_arr = arr.map { |num| num.to_s }
puts = new_arr
puts arr
# orininal array is not changed
new_arr = arr.map(&:to_s)

# select loop
arr = [1,2,3,4,5]
new_arr = arr.select { |num| num % 2 == 0 }
puts new_arr
# reject loop
arr = [1,2,3,4,5]
new_arr = arr.reject { |num| num % 2 == 0 }
puts new_arr

# reduce
arr = [1,2,3,4,5]

sum = arr.reduce(0, :+)
puts sum
# same thing below
sum = arr.reduce(:+)
puts sum
sum = arr.reduce(0){ |initial, num| initial += num }
puts sum

# next loop
x = 0
(0..5).each do |x|
	if x % 2 == 0
		y = 'even'
	else	
		y = 'odd'
		next
	end
	puts x
end

# break loop
x = 0
while x <= 10
	break if x == 5
	puts x 
	x += 1
end	

# retry

while x <= 10
	begin
		# code that could throw exeception would go here
		x += 1
	rescue => e
		# e = exception that was thrown
		puts e
		# retry would go back up and restart the loop from the beginning
		# if we didnt have the retry it would keep iterating and the loop from where x is
		retry
	end	
end

# nested loop
x = 0
y = 0
(1..5).each do |i|
	puts "in x loop"
	x += i
	(1..2).each do |j|
		y += j
	end	
end
puts x 
puts y

# shell commands

puts `ls`
puts `clear`
puts `pwd`
files = `ls`
puts files


# man pages
puts `man ls`

# array index

arr = ['a', 'b', 'c', 'd']
puts arr[0]
puts arr.first + arr.last
puts arr[3]
puts arr[-1]
puts arr[0..2]

# method chaining
str = "hello class dont fall asleep"
puts str.split(" ").last
puts str.downcase.split(" ").join('-')
















