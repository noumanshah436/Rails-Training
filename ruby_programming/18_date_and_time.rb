# https://www.tutorialspoint.com/ruby/ruby_date_time.htm
# https://www.rubyguides.com/2015/12/ruby-time/


time1 = Time.new
puts "Current Time : " + time1.inspect

# Time.now is a synonym:
time2 = Time.now
puts "Current Time : " + time2.inspect


# *********************************

time = Time.new

# Components of a Time
# puts "Current Time : " + time.inspect
# puts time.year    # => Year of the date
# puts time.month   # => Month of the date (1 to 12)
# puts time.day     # => Day of the date (1 to 31 )
# puts time.wday    # => 0: Day of week: 0 is Sunday
# puts time.yday    # => 365: Day of year
# puts time.hour    # => 23: 24-hour clock
# puts time.min     # => 59
# puts time.sec     # => 59
# puts time.usec    # => 999999: microseconds
# puts time.zone    # => "UTC": timezone name


time = Time.new
values = time.to_a
p values


"19-02-2002".to_date

# p = Person.create(name: "Nouman", age: 23, DOB:"1998-11-19")
# p = Person.create(name: "Nouman", age: 23, DOB: Date.today - 24.years)


# ***********************

time = Time.new

time.strftime("%d/%m/%Y")        # "05/12/2015"
time.strftime("%k:%M")           # "17:48"
time.strftime("%I:%M %p")        # "11:04 PM"
time.strftime("Today is %A")     # "Today is Sunday"
time.strftime("%d of %B, %Y")    # "21 of December, 2015"
time.strftime("Unix time is %s") # "Unix time is 1449336630"
time.strftime("%b %Y")           # "Jan 1983"

# ***********************

d= Date.parse('12-JAN-1983')
