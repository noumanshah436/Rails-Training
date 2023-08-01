# Every Ruby source file can declare blocks of code to be run as the file is being loaded (the BEGIN blocks) and
# after the program has finished executing (the END blocks).


BEGIN {
   # BEGIN block code
   puts "BEGIN code block"
}

END {
   # END block code
   puts "END code block"
}
   # MAIN block code
puts "MAIN code block"


# A program may include multiple BEGIN and END blocks.
# BEGIN blocks are executed in the order they are encountered.
# END blocks are executed in reverse order.
