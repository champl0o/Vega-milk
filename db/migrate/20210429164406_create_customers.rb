class CreateCustomers < ActiveRecord::Migration[6.1]
  def change
    create_table :customers do |t|
      t.belongs_to :sales_manager, null: false,
       foreign_key: { to_table: :employees }
      t.string :name
      t.string :contact_person_name
      t.string :phone
      t.string :email
      t.boolean :is_active

      t.timestamps
    end
  end
end
