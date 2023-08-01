# Creating a module with name Gfg
module Gfg

	C = 10;

	# Prefix with name of Module
	# module method
	def Gfg.portal
		puts "Welcome to GFG Portal!"
	end

	def Gfg.tutorial
		puts "Ruby Tutorial!"
	end

	def Gfg.topic
		puts "Topic - Module"
	end

end

# displaying the value of
# module constant
puts Gfg::C

# calling the methods of the module
Gfg.portal
Gfg.tutorial
Gfg.topic

# Note:

# To define module method user have to prefix the name of the module with the method name while defining the method.
# The benefit of defining module method is that user can call this method by simply using the name of module and dot operator as shown in above example.

# A user can access the value of a module constant by using the double colon operator(::) as shown in the above example.

# If the user will define a method with def keyword only inside a module i.e. def method_name then it will consider as an instance method.
#        A user cannot access instance method directly with the use of the dot operator as he cannot make the instance of the module.

# To access the instance method defined inside the module, the user has to include the module inside a class and then use the class instance to access that method.

# The user can use the module inside the class by using include keyword. In this case, the module works like a namespace.
