class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :type
      t.float :fat_percentage

      t.timestamps
    end
  end
end
