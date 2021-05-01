class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.integer :unitPriceInCents
      t.datetime :orderDate
      t.datetime :estimatedDeliveryDate
      t.datetime :deliveryDate
      t.integer :status
      t.integer :orderedUnits
      t.integer :soldUnits

      t.timestamps
    end
  end
end
