class CreateIngredientsStorages < ActiveRecord::Migration[6.1]
  def change
    create_table :ingredients_storages do |t|
      t.float :weight_in_kg
      t.datetime :checkDate

      t.timestamps
    end
  end
end
