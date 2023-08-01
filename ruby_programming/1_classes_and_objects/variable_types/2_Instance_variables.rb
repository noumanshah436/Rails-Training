# Instance Variables:
# An instance variable name always starts with a @ sign.
# They are similar to Class variables but their values are local to specific instances of an object.
# Instance variables are available across methods for any specified instance or object i.e. instance variables can change from object to object.
# There is no need to initialize the instance variables and uninitialized instance variable always contains a nil value.
#  if your variable does not start with a @, it is considered to be a local variable.


class Customer
  def initialize(id, name, addr)
    # Instance Variables
    @cust_id = id
    @cust_name = name
    @cust_addr = addr
  end

  # displaying result
  def display_details
    puts "Customer id #{@cust_id}"
    puts "Customer name #{@cust_name}"
    puts "Customer address #{@cust_addr}"
    puts ""
  end
end

# Create Objects
cust1 = Customer.new('1', 'John', 'Wisdom Apartments, Ludhiya')
cust2 = Customer.new('2', 'Poul', 'New Empire road, Khandala')


# Call Methods
cust1.display_details
cust2.display_details
