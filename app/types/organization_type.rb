OrganizationType = GraphQL::ObjectType.define do
  name "Organization"
  description "A organization"

  field :id, types.ID
  field :name, types.String
  field :purpose, types.String
  field :active, types.Boolean
  field :donors do
    type types[DonorType]
    resolve -> (organization, args, ctx) {
      organization.donors
    }
  end
end
