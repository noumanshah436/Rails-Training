# https://www.tutorialspoint.com/ruby/ruby_input_output.htm

File.open("employees.txt", "r") do |file|     # this will store file content in the file variable
    # puts file.read()         #  read whole file
    # puts file.readline()     #  read one line and now file pointer is at the next line
    # puts file.readchar()     #  read one character
    # puts file.readlines()    #  return array of all the lines in the file
    # puts file.readlines()[2]    #  read 3rd line of the file

    for line in file.readlines()
        puts line
    end
end

# ---------------
# or
# ---------------

# file = File.open('employees.txt', 'r')

# # puts file.read()
# for line in file.readlines()
#     puts line
# end
# file.close  # here we need to close the file

# ******************************

# In simple words, truncating a file means removing the file contents without deleting the file.
#  Truncating a file is much faster and easier than deleting the file , recreating it, and setting the correct permissions and ownership

# ******************************

# Mode |  Meaning
# -----+--------------------------------------------------------
# "r"  |  Read-only, starts at beginning of file  (default mode).
# -----+--------------------------------------------------------
# "r+" |  Read-write, starts at beginning of file.
# -----+--------------------------------------------------------
# "w"  |  Write-only, truncates existing file
#      |  to zero length or creates a new file for writing.
# -----+--------------------------------------------------------
# "w+" |  Read-write, truncates existing file to zero length
#      |  or creates a new file for reading and writing.
# -----+--------------------------------------------------------
# "a"  |  Write-only, starts at end of file if file exists,
#      |  otherwise creates a new file for writing.
# -----+--------------------------------------------------------
# "a+" |  Read-write, starts at end of file if file exists,
#      |  otherwise creates a new file for reading and
#      |  writing.
# -----+--------------------------------------------------------
# "b"  |  Binary file mode (may appear with
#      |  any of the key letters listed above).
#      |  Suppresses EOL <-> CRLF conversion on Windows. And
#      |  sets external encoding to ASCII-8BIT unless explicitly
#      |  specified.
# -----+--------------------------------------------------------
# "t"  |  Text file mode (may appear with
#      |  any of the key letters listed above except "b").

