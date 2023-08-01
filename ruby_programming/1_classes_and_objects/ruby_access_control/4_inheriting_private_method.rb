# In general, private methods can’t be inherited in object-oriented programming languages.
#  But in Ruby, private methods can also be inherited just like protected and public methods.
# Example:

# Ruby program to demonstrate that private
# method can also be inherited

class Geeks

	# public method
	def method_1
	
		p "Public Method of class Geeks"
	
	end

	# defining the protected method
	protected

	def method_2
		
		p "Protected Method of class Geeks"
	end

	# defining the private method
	private

	def method_3
		
		p "Private Method of class Geeks"
		
	end
end

# Sudo class inheriting Geeks class
class Sudo < Geeks
	
	# public method of Sudo class
	def method_4
		
		p "Public Method of Sudo Class"
		
		# calling all three methods of Geeks class
		method_1
		method_2
		method_3
	end
end

# creating an object of class Sudo
obj_sudo = Sudo.new

# calling the public method
# of class Sudo which will
# automatically call the private
# and protected method of Geeks class
obj_sudo.method_4
