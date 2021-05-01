class CreatePackedProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :packed_products do |t|
      t.belongs_to :product, null: false, foreign_key: true
      t.string :name
      t.integer :weight_in_gramms
      t.integer :package_type
      t.integer :price_in_cents

      t.timestamps
    end
  end
end
