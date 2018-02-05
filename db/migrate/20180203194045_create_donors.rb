class CreateDonors < ActiveRecord::Migration[5.1]
  def change
    create_table :donors do |t|
      t.string :name
      t.string :gender
      t.references :organization, foreign_key: true

      t.timestamps
    end
  end
end
