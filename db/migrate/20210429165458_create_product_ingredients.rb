class CreateProductIngredients < ActiveRecord::Migration[6.1]
  def change
    create_table :product_ingredients do |t|
      t.integer :weightInGramms

      t.timestamps
    end
  end
end
