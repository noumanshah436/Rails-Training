puts 1.class
puts "".class
puts [].class

puts 1.is_a?(Integer)
puts 1.is_a?(String)

# everything is an object 
# in Ruby, classes themselves are simply objects that belongs to the class Class. Here's a simple example that demonstrates this fact:
1.class.class
