def getResult(grade)
  result = ''

  case grade
  when 'A'
    'You Pass'
  when 'F'
    'You fail'
  else
    'Invalid grade'
  end
end

puts getResult('A')

# ********************

$age = 5
case $age
when 0..2
  puts 'baby'
when 3..6
  puts 'little child'
when 7..12
  puts 'child'
when 13..18
  puts 'youth'
else
  puts 'adult'
end

# ********************

# Ranges can be used in case statements −

score = 70

result = case score
         when 0..40 then 'Fail'
         when 41..60 then 'Pass'
         when 61..70 then 'Pass with Merit'
         when 71..100 then 'Pass with Distinction'
         else 'Invalid Score'
         end

puts result

def getMon(num)
  result = ''

  case num
  when 1
    'Jan'
  when 2
    'Feb'
  when 3
    'Mar'
  when 4
    'Apr'
  when 5
    'May'
  when 6
    'Jun'
  when 7
    'Jul'
  when 8
    'Aug'
  when 9
    'Sep'
  when 10
    'Oct'
  when 11
    'Nov'
  when 12
    'Dec'
  else
    'Invalid Month'
  end
end

puts getMon(12)
