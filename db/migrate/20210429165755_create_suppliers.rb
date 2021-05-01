class CreateSuppliers < ActiveRecord::Migration[6.1]
  def change
    create_table :suppliers do |t|
      t.string :name
      t.string :contactPersonName
      t.string :email
      t.boolean :isActive

      t.timestamps
    end
  end
end
