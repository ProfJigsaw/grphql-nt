class Types::UserType < Types::BaseObject
  description "A user object"

  field :id, Integer, null: false
  field :email, String, null: false
  field :projects, [Types::ProjectType], null: true
end
