class Book
    attr_accessor :name, :author
    def initialize(name, author)
        @name=name
        @author = author
    end
end

class NewDesign < Book
    attr_accessor :color 
    def initialize(name, author, color)
        @color = color
        super(name, author)
    end
end

# book = Book.new "chem", "Nouman"
# p book.name
# p book.author

newDesign  = NewDesign.new "chem", "Nouman", "Blue"
p newDesign.name
p newDesign.author
p newDesign.color