class AddActiveToOrganization < ActiveRecord::Migration[5.1]
  def change
    add_column :organizations, :active, :boolean
  end
end
