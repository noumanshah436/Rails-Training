# Class Variables:
# A class variable name always starts with @@ sign.
# It is available across different objects.
# A class variable belongs to the class and it is a characteristic of a class.
# They need to be initialized before use.
# Another way of thinking about class variables is as global variables within the context of a single class.
# A class variable is shared by all the descendants of the class.
# An uninitialized class variable will result in an error.


# !/usr/bin/ruby
# Ruby program to illustrate
# the Class Variables

class Customer
  # class variable
  @@no_of_customers = 0

  def initialize(id, name, addr)
    # An instance Variable
    @cust_id = id
    @cust_name = name
    @cust_addr = addr
    # updating class variable
    @@no_of_customers += 1
  end

  # displaying result
  def display_details

    puts "Customer id #{@cust_id}"
    puts "Customer name #{@cust_name}"
    puts "Customer address #{@cust_addr}"
    # displaying class variavle
    puts "no_of_customers #{@@no_of_customers}"
  end

  def total_no_of_customers
    # class variable
    # @@no_of_customers += 1
    puts "Total number of customers: #{@@no_of_customers}"
  end
end

# Create Objects
cust1 = Customer.new('1', 'John', 'Wisdom Apartments, Ludhiya')
cust1.display_details

cust2 = Customer.new('2', 'Poul', 'New Empire road, Khandala')
cust2.display_details


# Call Methods

# cust1.total_no_of_customers


# ******************************

# One of the places where class variables do find proper use is to store application configuration -
# things like application name, version, database and other settings.
class ApplicationConfiguration
  @@configuration = {}

  def self.set(property_name, value)
    @@configuration[property_name] = value
  end

  def self.get(property_name)
    @@configuration[property_name]
  end
end

ApplicationConfiguration.set("name", "Demo Application")
ApplicationConfiguration.set("version", "0.1")

p ApplicationConfiguration.get("version")

# if we inherit this class , the class variable will remain same for all classes.
# All classes share the same copy of the class variable @@configuration.

# ******************************

