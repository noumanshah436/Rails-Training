# frozen_string_literal: true

module Types
  class BookType < Types::BaseObject
    field :id, ID, null: false
    field :name, String
    field :description, String
    field :author_id, Integer

    field :chapters, [Types::ChapterType], null: true
  end
end
