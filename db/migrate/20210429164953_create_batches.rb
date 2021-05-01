class CreateBatches < ActiveRecord::Migration[6.1]
  def change
    create_table :batches do |t|
      t.belongs_to :packed_product, null: false, foreign_key: true
      t.string :batch_number
      t.datetime :produce_date
      t.datetime :expiration_date
      t.integer :units
      t.integer :cancelled_units

      t.timestamps
    end
  end
end
