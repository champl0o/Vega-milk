class CreateProductIngredientsIngredients < ActiveRecord::Migration[6.1]
  def change
    create_join_table :product_ingredients, :ingredients do |t|
      t.index :product_ingredient_id
      t.index :ingredient_id

      t.timestamps
    end
  end
end
