# The class instance variable in this example is @foo_count. Even though the notation is confusingly similar to a normal instance variable,
# the difference here is that @foo_count is initialized directly in the class body and is accessed only from class methods.

# As you can see, the values for @foo_count are different for both Foo and Bar. This means that both classes are operating on different @foo_count.
#  Note that we have to initialize @foo_count in all inherited classes.

class Foo
  @foo_count = 0

  def self.increment_counter
    @foo_count += 1
  end

  def self.current_count
    @foo_count
  end
end

class Bar < Foo
  @foo_count = 100
end


Foo.new.med

Foo.increment_counter
Bar.increment_counter
p Foo.current_count
p Bar.current_count


# ************************************


class ApplicationConfiguration
  @configuration = {}

  def self.set(property, value)
    @configuration[property] = value
  end

  def self.get(property)
    @configuration[property]
  end
end

class ERPApplicationConfiguration < ApplicationConfiguration
  @configuration = {}
end

class WebApplicationConfiguration < ApplicationConfiguration
  @configuration = {}
end

ERPApplicationConfiguration.set("name", "ERP Application")
WebApplicationConfiguration.set("name", "Web Application")

p ERPApplicationConfiguration.get("name")
p WebApplicationConfiguration.get("name")

p ApplicationConfiguration.get("name")


# ************************************

# Class instance variables are a better alternative than class variables simply because the data is not shared across the inheritance chain.
# Another major difference between class variables and class instance variables are that class instance variables are available only in class methods.
#  But class variables are available in both class methods and instance methods.

# A quick summary before we move on:

# 1) Instance variables are available only for instances of a class. They look like @name.
#    Class variables are available to both class methods and instance methods. They look like @@name

# 2) It is almost always a bad idea to use a class variable to store state. There are only a very few valid use cases where class variables are the right choice.

# 3) Prefer class instance variables over class variables when you do really need store data at a class level. Class instance variables use the same notation as
#    that of an instance variable. But unlike instance variables, you declare them inside the class definition directly.
