class Types::ProjectType < Types::BaseObject
  description "A project belonging to a user"

  field :id, Integer, null: false
  field :title, String, null: false
  field :user, Types::UserType, null: false
  # field :user_email, String, null: true

  # def user_email
  #   context[:current_user][:email]
  # end
end
