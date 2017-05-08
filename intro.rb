# puts "Hello, World!"  ----- "puts" puts it on a new line in the termal

# my_var = "A new variable" ---- no ; 

# puts my_var  ---- snake case


# "Strings"
# 11  -----   fixed nums
# 10.34 -----  floats
# true false
# [5,4,3, "my string", "hello"]

# bike = {type: "cruiser", brand: "cannondale"} ---- hashes not objects

# puts bike[:type]

# num = 5
# num_string = "5"

# if num == num_string 
# 	puts "They are the same."
# elsif num_string == "5"
# 	puts "Num string is 5."
# else
# 	puts "They are not the same."
# end



# LOOPS

# friends =  ["Sinead", "Aidan", "Grace", "Rich"]

# friends.each_with_index do |friend, i|
# 	puts friend
# 	puts i

# friends.each do |friend|
# 	puts friend
# end

# friends.length.times do |i|
# 	puts friends[i]
# end


# 10.times do
# 	puts "I'm the best."
# end




# METHODS


# def my_method
# 	puts "hello, World!"
# end

# my_method


# def my_stuff (thing)
# 	puts thing + " is my stuff."
# end

# my_stuff("car")

# def friend_toys(person, stuff)
# 	stuff.each do |thing|
# 		puts person + " has a " + thing
# 	end
# end

# toys = ["lego", "doll", "car"]
# friend_toys("Chris", toys)




# Create a method that takes a string as an argument and adds the phrase “Only in America!” to the end of it

# def american_string(string)
# 	puts string + " only in america"
# end

# american_string("hotdog")


# Create a method to find the maximum value in an array of numbers. For instance: [100,10,-1000] should return 100. Do not use Ruby’s built-in .max method

# array = [3,7,2,4,6,1,8,5]

# def math_method(array)
# 	# array = [3,7,2,4,6,1,8,5]
# 	puts array.sort.last
# end

# math_method(array)

# def max_num(nums)
# 	max = nums[0]
# 	nums.each do |num|
# 		if num > max
# 			max = num
# 		end
# 	end
# 	puts max 
# end

# max_num(array)



# STRING CAT

# "<<"  is basically +=

# def america(string)
# 	string << " only in America!"
# 	puts string
# end

# nums =[43, 1, 5, 230, 124]

# def max_num(array)
# 	# puts nums.max
# 	# print array.sort
# 	puts array.sort.last
# end 

# max_num(nums)


# Create a method that prints the numbers from 1 to 100, except:

# For multiples of three print “Fizz” instead of the number
# For multiples of five print “Buzz”
# Print “FizzBuzz” for numbers that are multiples of both 3 and 5.

# 1.upto(100) do |i|
#   if i % 5 == 0 and i % 3 == 0
#     puts "FizzBuzz"
#   elsif i % 5 == 0
#     puts "Buzz"
#   elsif i % 3 == 0
#     puts "Fizz"
#   else
#     puts i
#   end
# end

# def fizz_buzz(amount)
	
# 	(1..amount).each do |i|
# 		fizzy = ""

# 		fizzy << "fizz" if i % 3 == 0

# 		fizzy << "buzz" if i % 5 == 0
	
# 		if fizzy == ""
# 			puts i
# 		else
# 			puts fizzy
# 		end
# 	end
# end

# fizz_buzz(100)




# hashes are only used for storing data , example cant call fizz_buzz in the hash

# :hello is a symbol 
# Hash is not an object!

# chris = {
# 	name: "Chris",
# 	occupation: "Teacher",
# 	hair: "Brown"
# }

# same thing 

# chris = {:name => "Chris", :occupation => "Teacher", :hair => "Brown"}

# ^^^^ old way to do it but still used. ^^^^

# chris[:name]    

# ^^^ pulls out chris var ^^^ from hash

# chris[:eye_color] = "green"

# ^^^ creates new key value pair on the fly ^^^


# house_words = ["Lannister", "Hear Me Roar!"]

# house_hash = {}

# house_hash[house_words[0]] = house_words[1].to_sym

# puts house_hash[:Lannister]
# puts house_hash




# OBJECT!!

# class Bike

# 	attr_accessor :wheels, :brand, :color
# 	# attr_reader :wheels, :brand, :color
# 	# attr_writer :color

# 	def initialize(brand, color)
# 		@brand = brand
# 		@color = color
# 		@wheels = 4
# 	end

# 	def add_training_wheels
# 		@wheels += 2 if @wheels == 4
# 	end

# end

# cruiser = Bike.new(4, "Schwinn", "Red")
# cruiser.wheels
# cruiser.brand
# cruiser.color




class Animal

	attr_reader :name, :multicellular, :sentience, :nervous_system

	def create
		@multicellular = true
		@sentience = true
		@nervous_system = true
	end

end

class Mammal < Animal

	attr_accessor :blood, :name

	def initialize(name)
		@name = name
		@blood = "warm"
		create
		# super
	end

end

class GrossBug < Animal

	def initialize(name)
		@name = name
		@gross = true
		create
end

class Arachnid < GrossBug

	attr_reader :legs

	def initialize(name)
		@legs = 8
		super

	end

# tiger = Mammal.new("Tiger")
# tiger.name












