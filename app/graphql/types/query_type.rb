module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator"
    def test_field
      "Hello World!"
    end

    # User query
    field :user, UserType, null: true do
      description "Find a user by ID"
      argument :id, Integer, required: true
    end
    def user(id:)
      User.find_by(id: id)
    end

    # Project query
    field :project, [ProjectType], null: true do
      description "Find all projects and their users"
    end
    def project
      context[:current_user].projects
    end
  end
end
