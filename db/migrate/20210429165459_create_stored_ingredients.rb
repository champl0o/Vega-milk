class CreateStoredIngredients < ActiveRecord::Migration[6.1]
  def change
    create_table :stored_ingredients do |t|
      t.belongs_to :ingredient, null: false, foreign_key: true
      t.belongs_to :employee, null: false, foreign_key: true
      t.float :weight_in_kg
      t.datetime :check_date

      t.timestamps
    end
  end
end
