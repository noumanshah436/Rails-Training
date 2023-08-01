str = "Hello World"
num = 28
puts str.upcase

# respond_to check that if we can use upcase method on that object or not
puts str.respond_to? :upcase
puts num.respond_to? :upcase

# syntax
# obj.respond_to :method
