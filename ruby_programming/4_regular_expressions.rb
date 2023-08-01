# https://www.tutorialspoint.com/ruby/ruby_regular_expressions.htm
# https://www.youtube.com/watch?v=rhzKDrUiJVk   must watch
# https://regexr.com/

# ***************************

# If you're looking to find patterns, substrings, or something specific inside a string,
# then a regular expression may be what you're looking for.
# They can be used to validate email addresses & phone numbers. Or to extract information from text

# ***************************


#A regular expression literal is a pattern between slashes or between arbitrary delimiters followed by %r as follows −
# Syntax
# /pattern/
# /pattern/im       # option can be specified
# %r!/usr/local!    # general delimited regular expression

puts 'RubyMonk'.gsub(/[aeiou]/,'1')   #  replaces all the vowels with the number 1

puts 'RubyMonk Is Pretty Brilliant'.gsub(/[A-Z]/,'0')

# ***************************

#  check if string is present or not
# Remember: the return value when using `=~` is either the string index or `nil`

str = "the quick 12 brown foxes jumps over the 10 lazy dogs"
puts str=~ /quick/

puts str=~ /z/ ? "valid" : "invalid"

puts str=~ /Z/i ? "valid" : "invalid"

# ***************************

rregex = "Syed Nouman"

puts rregex =~ /^Sy/ ? "valid" : "invalid"
puts rregex =~ /Noh?/ ? "valid" : "invalid"
puts rregex =~ /an$/ ? "valid" : "invalid"     #  ends with

# ***************************

puts "aaaa1".match?(/[0-9]/)
# true
puts "".match?(/[0-9]/)
# false

# ***************************

# Meta Characters
# [] A set of characters
# \ Signals a special sequence (can also be used to escape special characters)
# . Any character (except newline character)
# ^ Starts with
# $ Ends with
# * Zero or more occurrences
# + One or more occurrences
# {} Exactly the specified number of occurrences
# | Either or
# () Capture and group



# Special Sequences
# \A Returns a match if the specified characters are at the beginning of the string
# \b Returns a match where the specified characters are at the beginning or at the end of a word r"ain\b"
# \B Returns a match where the specified characters are present, but NOT at the beginning (or at the end) of a word

# \d Returns a match where the string contains digits (numbers from 0-9)
# \D Returns a match where the string DOES NOT contain digits
# \s Returns a match where the string contains a white space character
# \S Returns a match where the string DOES NOT contain a white space character
# \w Returns a match where the string contains any word characters (characters from a to Z, digits from 0-9, and the underscore _ character)
# \W Returns a match where the string DOES NOT contain any word characters
# \Z Returns a match if the specified characters are at the end of the string
