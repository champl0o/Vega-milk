class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.belongs_to :batch, null: true
      t.belongs_to :customer, null: false, foreign_key: true
      t.belongs_to :packed_product, null: false, foreign_key: true
      t.integer :unit_price_in_cents
      t.datetime :order_date
      t.datetime :estimated_delivery_date
      t.datetime :delivery_date
      t.integer :status
      t.integer :ordered_units
      t.integer :sold_units

      t.timestamps
    end
  end
end
