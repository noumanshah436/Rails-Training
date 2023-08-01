# File.open("employees.txt", "a") do |file|       #  append to file
#     file.write("\nOscar, Accounting")
# end

# File.open("employees.txt", "w") do |file|       #  override existing file and write from start
#     file.write("writing some text")
# end

# File.open("index.html", "w") do |file|           #  create index.html file and write content
#     file.write("<h1>Hello World</h1>")
# end

File.open("employees.txt", "r+") do |file|
    file.readline()                  # read one line and now file pointer is at 2nd line
    file.write("overriden")          # this will wverride the 2nd line
end




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

