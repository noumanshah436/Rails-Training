# https://rubymonk.com/learning/books/4-ruby-primer-ascent/chapters/33-advanced-arrays/lessons/76-ripping-the-guts#solution4111

zen, life = [42, 43]
p zen

# *********************************


array = [42, 43]

zen = array[0]
life = array.at(1)

puts zen
puts life

# *********************************
zen, john,a = [[4, 8], [3, 16], [23, 42, 15]]

p zen
p john
p a

# *********************************
# It's also possible to write a function and use it in a way as to simulate returning multiple values from it. In practice, this is rarely necessary. But it's fun to know you can!
def zen
  [42, true]
end

x, y = zen

puts x
puts y
# *********************************

[[1, 2, 3, 4], [42, 43]].each do |element|
  a, b = element
  puts "#{a} #{b}"
end

# *********************************
