class CreateAdditionalSpends < ActiveRecord::Migration[6.1]
  def change
    create_table :additional_spends do |t|
      t.string :title
      t.integer :cost_in_cents
      t.string :description
      t.datetime :date

      t.timestamps
    end
  end
end
