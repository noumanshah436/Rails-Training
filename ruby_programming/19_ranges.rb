# https://www.tutorialspoint.com/ruby/ruby_ranges.htm

# Ranges occur everywhere: January to December, 0 to 9, lines 50 through 67, and so on.
#  Ruby supports ranges and allows us to use ranges in a variety of ways .

# Ranges as Sequences
# Ranges as Conditions
# Ranges as Intervals

# **********************

# Ranges as Sequences
# two-dot form creates an inclusive range
# three-dot form creates a range that excludes the specified high value.

# (1..5) #==> 1, 2, 3, 4, 5
# (1...5) #==> 1, 2, 3, 4
# ('a'..'d') #==> 'a', 'b', 'c', 'd'

# $, =", "   # Array value separator
range1 = (1..10).to_a
range2 = ('bar'..'bat').to_a

puts "#{range1}"
puts "#{range2}"

# **********************

digits = 0..9

puts digits.include?(5)

puts "Min value is #{digits.min}"

puts "Max value is #{digits.max}"

ret = digits.reject {|i| i < 5 }
puts "Rejected values are #{ret}"

digits.each do |digit|
   puts "In Loop #{digit}"
end

# ********************

# Ranges can be used in case statements −


score = 70

result = case score
   when 0..40 then "Fail"
   when 41..60 then "Pass"
   when 61..70 then "Pass with Merit"
   when 71..100 then "Pass with Distinction"
   else "Invalid Score"
end

puts result


# **********************

# Ranges as Intervals

# A final use of the versatile range is as an interval test: seeing if some value falls within the interval represented by the range.
# This is done using ===, the case equality operator.

if ((1..10) === 5)
  puts "5 lies in (1..10)"
end

if (('a'..'j') === 'c')
  puts "c lies in ('a'..'j')"
end

if (('a'..'j') === 'z')
  puts "z lies in ('a'..'j')"
end
