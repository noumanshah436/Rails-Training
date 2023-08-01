# https://www.mikedane.com/programming-languages/ruby/while-loops/
# https://www.tutorialspoint.com/ruby/ruby_loops.htm


# *****************************************

# while loop:
# Executes code while conditional is true.
#  A while loop's conditional is separated from code by the reserved word
#  do, a newline, backslash \ , or a semicolon ;

index = 1
while index <= 5
  puts index
  index += 1
end

# *****************************************

#  do while loop
# Syntax:
#    begin
#       code
#    end while conditional


# $i = 0
# $num = 5
# begin
#   puts("Inside the loop i = #{$i}")
#   $i += 1
# end while $i < $num


i = 0
num = 5
begin
  puts("Inside the loop i = #{i}")
  i += 1
end while i < num