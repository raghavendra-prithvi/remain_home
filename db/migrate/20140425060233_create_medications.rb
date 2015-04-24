class CreateMedications < ActiveRecord::Migration
  def change
    create_table :medications do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.string :product_name
      t.string :dose_quantity
      t.string :rate_quantity
      t.string :reason
      t.string :prescriber
      
      t.timestamps
    end
  end
end
