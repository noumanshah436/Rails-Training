# frozen_string_literal: true

module Types
  class AuthorType < Types::BaseObject
    field :id, ID, null: false
    field :email, String  # this attribute will map to the attribute of database
    field :name, String
    field :book_count, Integer, null: true  # this will map to the the function below
    field :books, [Types::BookType], null: true
    
    def book_count
      object.books.count
    end
  end
end
