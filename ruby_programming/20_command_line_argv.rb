# https://code-maven.com/argv-the-command-line-arguments-in-ruby

# for arg in ARGV
#   p arg
# end


# for i in 0 ... ARGV.length
#   puts "#{i} #{ARGV[i]}"
# end


# if ARGV.length < 2
#   puts "Too few arguments"
#   exit
# end

if ARGV.length != 2
  puts "We need exactly two arguments"
  exit
end

puts ARGV[0] + ARGV[1]
