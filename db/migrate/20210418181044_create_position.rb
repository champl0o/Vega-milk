class CreatePosition < ActiveRecord::Migration[6.1]
  def change
    create_table :positions do |t|
      t.integer :salary_in_cents
      t.string :name

      t.timestamps
    end
  end
end
