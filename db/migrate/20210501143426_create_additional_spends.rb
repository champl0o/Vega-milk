class CreateAdditionalSpends < ActiveRecord::Migration[6.1]
  def change
    create_table :additional_spends do |t|
      t.string :title
      t.integer :costInCents
      t.string :description
      t.datetime :date

      t.timestamps
    end
  end
end
