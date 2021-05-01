class CreateBatches < ActiveRecord::Migration[6.1]
  def change
    create_table :batches do |t|
      t.string :batchNumber
      t.datetime :produceDate
      t.datetime :expirationDate
      t.integer :units
      t.integer :cancelledUnits

      t.timestamps
    end
  end
end
