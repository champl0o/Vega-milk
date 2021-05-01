class CreateIngredientsStorages < ActiveRecord::Migration[6.1]
  def change
    create_table :ingredients_storages do |t|
      t.float :weightInKg
      t.datetime :checkDate

      t.timestamps
    end
  end
end
