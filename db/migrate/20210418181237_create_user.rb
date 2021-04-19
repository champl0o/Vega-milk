class CreateUser < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.integer :role
      t.belongs_to :employee, null: false, foreign_key: true

      t.timestamps
    end
  end
end
