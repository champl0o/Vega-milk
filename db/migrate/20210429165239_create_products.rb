class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :type
      t.float :fatPercentage

      t.timestamps
    end
  end
end
