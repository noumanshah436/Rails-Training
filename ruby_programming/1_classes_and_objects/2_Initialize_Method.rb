#  The initialize method is a specific method, which executes
#  when the new method is called with parameters.

# https://www.geeksforgeeks.org/ruby-getters-and-setters-method/

class Book
  attr_accessor :title, :author

  def initialize(title, author)
    @title = title      # @title is referrig to the attribute of the Book
    @author = author
  end
end

book1 = Book.new('Harry Potter', 'JK Rowling')
# book1.title = "Half-Blood Prince"

puts book1.title
