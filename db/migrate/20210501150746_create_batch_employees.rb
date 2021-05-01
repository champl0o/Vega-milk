class CreateBatchEmployees < ActiveRecord::Migration[6.1]
  def change
    create_join_table :batches, :employees do |t|
      t.index :batch_id
      t.index :employee_id

      t.timestamps
    end
  end
end
