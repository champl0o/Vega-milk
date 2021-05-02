class CreateBoughtIngredients < ActiveRecord::Migration[6.1]
  def change
    create_table :bought_ingredients do |t|
      t.belongs_to :supplier, null: false, foreign_key: true
      t.belongs_to :ingredient, null: false, foreign_key: true
      t.belongs_to :employee, null: false, foreign_key: true
      t.float :weight_in_kg
      t.integer :kg_price_in_cents
      t.datetime :order_date
      t.datetime :estimated_delivery_date
      t.datetime :delivery_date
      t.integer :status

      t.timestamps
    end
  end
end
