require 'pry'

# array recap

#[]
arr = Array.new()
binding.pry

#[nil, nil, nil, nil, nil]
arr = Array.new(5)

arr = []

arr = ['apple', 'orange', 'pear']

arr = [1, 'a', Array.new, {}, (1 + 2)]

arr = ['A', 'B', 'C']

puts arr[0]

arr.each do |letter|
	puts letter
end

arr.each_with_index do |letter, i|
	puts "#{i} => #{letter}"
end	

arr = []


arr = ['A', 'B', 'C']
# adding item to array
arr << 'D'
# adding a variable to the front of the array
['B', 'C', 'D'].unshift('A')

# removing the first item in front of the array
arr = ['A', 'B', 'C']
arr.shift
puts arr

 # removing the last item in the array
arr = ['A', 'B', 'C']
arr.pop
puts arr

# inserting ito an array
arr.insert(1, 'Z')
#['A', 'Z', 'B', 'C']

# array rotate
[1,2,3].rotate
#[2, 3, 1]

# array reverse
[1, 2, 3].reverse
# ['B', 'Z', 'A']

# array sort
['B', 'A', 'Z'].sort
# ['A', 'B', 'Z']

arr = ['A', 'B', 'C']
arr.delete_at(1)
puts arr

# clears array
arr = [1, 2, 3]
arr.clear

# picks a random item in the array
['A', 'B', 'C'].sample
# 'B'

['A', 'B', 'C'].join(',')
# 'A,B,C'

['A', ['B', 'C'], 'D'].flatten
# ['A', 'B', 'C', 'D']

[1, 2, 3, 1, 4].uniq
# [1, 2, 3, 4]

[1, 2, 3].map { |num| num + 1 }
# [2, 3, 4]


[1, 2, 3].shuffle
# [2, 3, 1]

# count the item in the array
[1, 2, 3].count

arr = [1, 2, 3]
arr.any?
# true

arr = [1, 2, 3]
b = arr.clone

arr = [1, 2, 3]
arr.max
# 3

arr = [1, 2, 3]
arr.min
# 1

arr = [1, 2, 3]
puts arr.drop(1)
#[2, 3]

arr.drop(2)
#[3]

['A', nil, 'B', 'C', nil].compact
# ['A', 'B', 'C']


{ name: 'Taylot', Gender: 'Male' }
{ name: 'TJ', gender: 'Male' }
{ name: 'Henry', gender: 'Male' }

taylor = { name: 'Taylor', gender: 'Male' }
puts taylor[:name]

tj = { "name": "TJ", "gender": "Male" }
puts tj[:name]

person = { first_name: 'Bob', last_name: 'Bobson', age: '25' }
puts person[:first_name]
puts person[:last_name]
puts person[:age]


person = { first_name: 'Abe', last_name: 'Lincoln' }
person[:first_name] = 'Abraham'
puts person

person = {
	first_name: 'Abe',
	last_name: 'Lincoln',
	age: 206,
	awesome_beard?: true,
	quotes: ['Whatever you are, be a good one', 
		'Dont believe everthing you read on the internet']
}
puts person


people = [
	{ first_name: 'Taylor', last_name: 'Wu' },
	{ first_name: 'Dave', last_name: 'Jungst'},
	{ first_name: 'Bat', last_name: 'Man', age: 30 }
]

puts people[1][:last_name]

languages = {
	languages: {
		ruby: {
			conceived: 1993,
			awesomeness: 9000
		},
		java: {
			conceived: 1991,
			awesomeness: false
		}
	}
}
puts languages[:languages][:ruby][:awesomeness]
languages[:languages][:java][:awesomeness] = -100000

# looping through hashes
condiments = { ketchup: 'gross', mayo: 'worse', mustard: 'awesome' }
condiments.each do |key, value|
	puts "condiments: #{key} is #{value}"
end

Hash.new
# {}

Hash.new(0)
# create a hash with a default value

hash = Hash.new(0)
hash[:a] = 100
hash[:b] = 90
puts hash

# merging hashes
h1 = { a: '1', b: '2' }
h2 = { c: '3', d: '4' }
puts h1.merge(h2)


























