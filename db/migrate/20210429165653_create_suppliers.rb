class CreateSuppliers < ActiveRecord::Migration[6.1]
  def change
    create_table :suppliers do |t|
      t.string :name
      t.string :contact_person_name
      t.string :email
      t.boolean :is_active

      t.timestamps
    end
  end
end
