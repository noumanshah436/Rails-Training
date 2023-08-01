# Use of super Method in Inheritance: 
# This method is used to call the parent class method in the child class. 
# If the method does not contain any argument it automatically passes all its arguments.
# A super method is defined by super keyword.
# Whenever you want to call parent class method of the same name so you can simply write super or super().

# base class
class Geeks_1
	
	# method of superclass accepting
	# two parameter
	def display a = 0, b = 0
		puts "Parent class, 1st Argument: #{a}, 2nd Argument: #{b}"
	end
end

# derived class Geeks_2
class Geeks_2 < Geeks_1

	# subclass method having the same name
	# as superclass
	def display a, b
		
		# calling the superclass method
		# by default it will pass
		# both the arguments
		super
		
		# passing only one argument
		super a
		
		# passing both the argument
		super a, b
		
		# calling the superclass method
		# by default it will not pass
		# both the arguments
		super()
		
		puts "Hey! This is subclass method"
	end
end

# creating object of derived class
obj = Geeks_2.new

# calling the method of subclass
obj.display "Sudo_Placement", "GFG"
