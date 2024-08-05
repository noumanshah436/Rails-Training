class Mutations::CreateUser < Mutations::BaseMutation
  # arguments
  argument :name, String, required: true
  argument :email, String, required: true

  # return fields upon creation
  field :user, Types::UserType, null: false
  field :errors, [String], null: false

  # resolve method: contain logic or commands to create user
  def resolve(name:, email:)
    user = User.new(name: name, email: email)
    if user.save
      {
        user: user,
        errors: []
      }
    else
      {
        user: nil,
        errors: user.errors.full_messages
      }
    end
  end
end
