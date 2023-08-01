# https://www.geeksforgeeks.org/ruby-exception-handling/

nums = [2, 8, 3, 4, 5]

begin                       #  code that can cause error will be in begin block
  #   nums['dog']
  num = 10 / 0
rescue ZeroDivisionError        #   catch error and exucute the below block of code
  puts 'Error'
rescue ZeroDivisionError        #   catch error and exucute the below block of code
  puts 'Error'
rescue TypeError => e
  puts e
end

# or raise an exception
# raise 'Made Up Exception'

# **************************
# Syntax:
# **************************

# begin
#      # exception raise

# rescue
#     # exception rescue

# ensure
#     # this block always executes
# end


# ***************************

# In Ruby, you can use the Exception class to catch all types of exceptions. Exception is the superclass of all standard Ruby exceptions, so any exception raised by Ruby will be an instance of this class (or a subclass of it).

begin
  # Code that might raise an exception
rescue Exception => e
  # Handle the exception
  puts "An exception occurred: #{e}"
end
