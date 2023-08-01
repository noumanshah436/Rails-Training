# Protected methods can only be called by objects of the defined class and its subclass.
# The access of these methods is limited in between the defined class or its subclass.
# You cannot access protected methods outside the defined class or its subclass. 
# The usage of protected methods is finite. 
# Protected methods are defined using protected keyword.


# Ruby program to demonstrate
# the protected access control

#!/usr/bin/ruby

class GeeksforGeeks
	
	# using initialize method
	def initialize
		
		# calling geeks_2 method
		geeks_2
		
		# calling geeks_2 method
		# using self-keyword
		self.geeks_2
		
	end
	
	# public method
	def geeks_1
		puts " geeks_1 method is called"
	end
	
	# defining the protected method using
	# protected keyword
	protected
	
	def geeks_2
		puts " geeks_2 method is called"
	end

end

# creating the object of class GeeksforGeeks
obj = GeeksforGeeks.new

# calling method
obj.geeks_1


# if you will try to call protected method using
# the object of class then it will give error

# obj.geeks_2
