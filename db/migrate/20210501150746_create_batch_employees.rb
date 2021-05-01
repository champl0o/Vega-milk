class CreateBatchEmployees < ActiveRecord::Migration[6.1]
  def change
    create_table :batch_employees do |t|

      t.timestamps
    end
  end
end
