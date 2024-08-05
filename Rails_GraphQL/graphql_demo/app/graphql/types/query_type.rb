module Types
  class QueryType < Types::BaseObject
    # /users
    field :users, [Types::UserType], null: false
    def users
      User.all
    end

    # /user/:id
    field :user, Types::UserType, null: false do
      argument :id, ID, required: true
    end
    def user(id:)
      User.find(id)
    end

    field :test_field, String, null: false, description: 'Testing 123'
    def test_field
      'We are testing'
    end

    field :authors, [Types::AuthorType], null: false
    def authors
      Author.all
    end

    # /author/:id
    field :author, Types::AuthorType, null: false do
      argument :id, ID, required: true
    end
    def author(id:)
      Author.find(id)
    end

  end
end
