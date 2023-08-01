
puts "programming".upcase    # we can use method diectly on literals

greeting = "Hello World"
#indexes:   012345678910


# using brackets is optional sometimes

puts greeting.length       # 11

puts greeting[0]           # H

puts greeting.include? "llo"      # true
puts greeting.include? "z"     #  return boolean value telling string is present in the string or not

puts greeting[1,3]             #  ell  , syntax    [ startindex ,   length ]

puts greeting.index("Wor")     # tell the starting index of this string

puts greeting.upcase()
puts greeting.upcase

puts greeting.strip             #  trim leading of trailing white spaces

puts "Ruby is a beautiful language".start_with?("Ruby")
puts "I can't work with any other language but Ruby".end_with?("Ruby")

puts "ThiS iS A vErY ComPlEx SenTeNcE".swapcase            # tHIs Is a VeRy cOMpLeX sENtEnCe

# https://www.rubyguides.com/2019/07/ruby-string-concatenation/

a = "Nice to meet you"
b = ", "
c = "do you like blueberries?"

puts a + b + c
# "Nice to meet you, do you like blueberries?"

# ************************
"Mississippi".count("i") # => 4
# ************************

a = ""
a += "test"
a += "test"
a += "test"

puts a
# "testtesttest"

# ************************

str = ""
str.concat("a")
str.concat("a")

puts str
# "aa"

# ************************
# you can use the << method, which is an alias for concat.

str = "hello world"
str << ".com"

p str
# "hello world.com"

# ************************
# prepend will concat string at the start

str = ""
str.prepend("1")
str.prepend("2")
str.prepend("3")

# "321"

# ************************
myArray = "Geeks For Geeks".split
puts myArray
# ************************

# sub and gsub do not change actual string
# The sub() method replaces just the first instance of a string with another.
#  Gsub meanwhile replaces all instances.
# Thus: Gsub is closest to a “replace string” method. Sub() is conceptually a “replace first string” method.
str = "I should look into your problem when I get time"
puts str.sub('I','We')  # replace 'I' with 'We' in a given string:
puts str
puts str.gsub('I','We')   #  replace all occurrences
puts str

# *************************

myArray = "image/upload/v1663590930/hvkwsmtbz3pg5bhk4w8h.png".split('/')
filename =  myArray[myArray.length-1]
a =(filename.length-5)
p a
p filename[0, ]

# *****************

string = 'Austin'
p string[1..string.length-2]  # => ustin
p string[1..string.size]    # => ustin

# *****************

puts "nouman shah".titleize
#  => "Nouman Shah"

# *****************
