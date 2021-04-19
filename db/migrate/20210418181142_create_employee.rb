class CreateEmployee < ActiveRecord::Migration[6.1]
  def change
    create_table :employees do |t|
      t.belongs_to :position, null: false, foreign_key: true
      t.string :name
      t.string :email
      t.string :phone
      t.date :begin_date
      t.date :end_date

      t.timestamps
    end
  end
end
