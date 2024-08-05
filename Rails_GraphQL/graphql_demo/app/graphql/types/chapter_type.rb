# frozen_string_literal: true

module Types
  class ChapterType < Types::BaseObject
    field :id, ID, null: false
    field :name, String
    field :short_description, String
    field :book_id, Integer
    field :author_name, String, null: true

    def author_name
      object.book.author.name
    end
  end
end
