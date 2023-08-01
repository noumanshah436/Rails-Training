# https://www.tutorialspoint.com/ruby/ruby_arrays.htm

lucky_numbers = [4, 8, "fifteen", 16, 23, 42.0]
#       indexes  0  1       2      3   4   5

lucky_numbers[0] = 90
puts lucky_numbers[0]     # 90
puts lucky_numbers[1]      # 8
puts lucky_numbers[-1]     # 42.0

puts "\n\n"
p lucky_numbers[2,3]   #  [ startindex , length ]
puts "\n\n"
p lucky_numbers[2..4]   #   get range of element from index 2 to 4 (  both ends inclusive )
puts "\n\n"

p lucky_numbers.length

p lucky_numbers.include? "fifteen"     #  check it is in the array or not

puts "\nreverse"
p lucky_numbers.reverse

#  these methods will not change the origional array
puts "\noriginal array"
p lucky_numbers
# ***************************

names = Array.new       #   if we do not want to add element yet
names[0] = "Nouman"
names[5] = "Farhan"

p names

# ***************************


nums = Array.new(10) { |e| e = e*2  }
p "#{nums}"

