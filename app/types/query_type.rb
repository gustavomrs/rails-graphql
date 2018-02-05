QueryType = GraphQL::ObjectType.define do
  name "query"
  description "root query for this schema"

  field :organization do
    type OrganizationType
    argument :active, !types.Boolean
    resolve -> (obj, args, ctx) {
      Organization.find_by(active: args[:active])
    }
  end

  field :donor do
    type DonorType
    argument :name, !types.String
    resolve -> (obj, args, ctx) {
      Donor.find_by(name: args[:name])
    }
  end
end
