
#   gets always return input as string

puts "Enter integer value: "
myint = gets.chomp().to_i


puts "Enter decimal  value: "
myfloat = gets.chomp().to_f

puts "my int= #{myint} ,    myfloat=#{myfloat}"

puts "Enter your name: "
name = gets                                 # take string and also capture \n ( when we hit enter)
puts "Hello #{name}, how are you"

puts "Enter your name: "
name = gets.chomp                           #  chomp will get rid of \n
puts "Hello #{name}, how are you"


# ************************
# https://www.educative.io/answers/what-is-the-chomp-method-in-ruby

# chomp method  -- chomp will get rid of \n

# In Ruby, the chomp method removes the record separator from the end of the string and returns the string.
# A record in the computer is a collection of data items arranged for processing.

#Example 1
puts "bye\n".chomp

#Example 2
puts "bye\r\n".chomp

#Example 3
puts "bye".chomp('e')       # by

# chomp only remove char or string if it is at the end of string

puts "Method".chomp('d')   #  Meth
puts "bye".chomp('e')      #  by


puts "Methods".chomp('d')   # Methods
puts "byes".chomp('e')      #  byes
