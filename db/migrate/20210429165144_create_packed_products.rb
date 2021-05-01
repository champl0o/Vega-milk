class CreatePackedProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :packed_products do |t|
      t.string :name
      t.integer :weightInGramms
      t.integer :packageType
      t.integer :priceInCents

      t.timestamps
    end
  end
end
