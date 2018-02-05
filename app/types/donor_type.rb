DonorType = GraphQL::ObjectType.define do
  name "Donor"
  description "A donor"

  field :id, types.ID
  field :name, types.String
  field :gender, types.String
  field :organization, OrganizationType
end
