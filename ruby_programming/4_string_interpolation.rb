# Interpolation may be disabled by escaping the “#” character or using single-quote strings:

puts '#{1 + 1}' #=> "\#{1 + 1}"


# In addition to disabling interpolation, single-quoted strings also disable all escape sequences except for the single-quote (\') and backslash (\\).
puts '\n '

# *************************


puts "#{1+1}"
puts %(1+1 is #{1+1} )

# %q(...) behaves like a single-quote string (no interpolation or character escaping), while %Q behaves as a double-quote string.
puts %Q(1+1 is #{1+1} )


puts "con" "cat" "en" "at" "ion"    #  concatenation
puts "This string contains "\
"no newlines."              #=> "This string contains no newlines."

puts ?\u{41}
