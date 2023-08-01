# Polymorphism using inheritance
# Inheritance is a property where a child class inherits the properties and methods of a parent class.
#  One can easily implement polymorphism using inheritance. It can be explained using the following example:

class Vehicle
	def tyreType
		puts "Vehicle"
	end
end

# Using inheritance
class Car < Vehicle
	def tyreType
		puts "Car"
	end
end

# Using inheritance
class Truck < Vehicle
	def tyreType
		puts "Truck"
	end
end

# Creating object
vehicle = Vehicle.new
vehicle.tyreType()

# Creating different object calling same function
vehicle = Car.new
vehicle.tyreType()

# Creating different object calling same function
vehicle = Truck.new
vehicle.tyreType()
