class CreateCustomers < ActiveRecord::Migration[6.1]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :contactPersonName
      t.string :phone
      t.string :email
      t.boolean :isActive

      t.timestamps
    end
  end
end
