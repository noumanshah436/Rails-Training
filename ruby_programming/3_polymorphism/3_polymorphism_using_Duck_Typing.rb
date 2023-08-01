# Polymorphism using Duck-Typing
# In Ruby, we focus on the object’s capabilities and features rather than its class. So, Duck Typing is nothing but working on the idea of what an object can do rather than what it actually is. Or, what operations could be performed on the object rather than the class of the object.

############################################
# see python duck typing

# duck typing = * concept where the class of an object is less important than the methods/attributes
#               * class type is not checked if the methods/attributes are present
#               * “If it walks like a duck, and it quacks like a duck, then it must be a duck.”

# Using Duck Typing, we do not check types at all. Instead, we check for the presence of a
#            given method or attribute.
#  we can accept any object provided that the object have all the methods that are used by that object
#############################################

# Creating class with two methods
class Single

	def type
		puts "Room is on the fourth floor."
	end

	def room
		puts "Per night stay is 5 thousand"
	end

end


class Couple

# Same methods as in class single
	def type
		puts "Room is on the second floor"
	end

	def room
		puts "Per night stay is 8 thousand"
	end

end


class Hotel

	def enters
		puts "A customer enters"
	end

	def type(customer)   
		customer.type
	end

	def room(customer)
		customer.room
	end

end

# Creating Object
# Performing polymorphism
hotel= Hotel.new
puts "This visitor is Single."
customer = Single.new
hotel.type(customer)
hotel.room(customer)

puts "\n"

puts "The visitors are a couple."
customer = Couple.new
hotel.type(customer)
hotel.room(customer)


 