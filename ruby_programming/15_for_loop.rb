# https://www.tutorialspoint.com/ruby/ruby_loops.htm
# https://www.mikedane.com/programming-languages/ruby/for-loops/

for i in 0..5
  puts i                  #   print 0 to 5 ( 6 iterations )
end


5.times do |index|               # index is just variable name, we can use simple i
  puts "value = #{index}"        #   print index 0 to 4   ( 5 iterations )
end

nums = [4, 8, 15, 16, 23, 42]
for num in nums
    puts num
end

# The each{} method allows one loop through the elements of an array to perform operations on them
nums.each { |num| puts "Array value = #{num}"}
nums.each_with_index { |num,index| puts "Array value = #{num}, index=#{ i}"}

nums.each do |num|
  puts "Array value = #{num}"
end

nums.each_with_index do |num, i|
  puts "Array value = #{num}, index=#{ i}"
end

(0..5).each do |i|
  puts "Value = #{i}"      #    print 0 to 5
end
