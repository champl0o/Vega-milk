class CreateBoughtIngredients < ActiveRecord::Migration[6.1]
  def change
    create_table :bought_ingredients do |t|
      t.float :weightInKg
      t.integer :kgPriceInCents
      t.datetime :orderDate
      t.datetime :estimatedDeliveryDate
      t.datetime :deliveryDate
      t.integer :status

      t.timestamps
    end
  end
end
