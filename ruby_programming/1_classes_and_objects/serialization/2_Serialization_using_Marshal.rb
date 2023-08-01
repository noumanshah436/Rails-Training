# https://www.cosmiclearn.com/ruby/serialization.php

# Serialization is the process of writing data of an object to a stream.
# The inverse process of reading stream into an object is called Deserialization.
# This is very useful when you want to preserve state of an object, and then retrieve it later.

# Serialization can be done in Ruby via a class called Marshal.

# The methods in Marshal that help with Serialization are:
# Method	      Description
# Marshal.load	Read data from Input stream into Object.
# Marshal.dump	Write data from Object into Output stream.

class Employee
  def initialize(empId, empName)
      @empId = empId
      @empName = empName
  end

  def get_empId
      return @empId
  end

  def get_empName
      return @empName
  end
end

emp = Employee.new(1, "Mugambo")
seredObject = Marshal.dump(emp)

emp2 = Marshal.load(seredObject)
puts "Employee ID = #{emp2.get_empId}"
puts "Employee Name = #{emp2.get_empName}"
