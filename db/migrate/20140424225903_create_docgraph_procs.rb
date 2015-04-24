class CreateDocgraphProcs < ActiveRecord::Migration
  def change
    create_table :docgraph_procs do |t|
      t.integer :npi
      t.text :provider_type
      t.string :medicare_participation_indicator
      t.string :place_of_service
      t.string :hcpcs_code
      t.text :hcpcs_description
      t.integer :line_srvc_cnt      
      t.string :bene_unique_cnt
      t.string :bene_day_srvc_cnt
      t.string :average_Medicare_allowed_amt
      t.string :stdev_Medicare_allowed_amt
      t.string :average_submitted_chrg_amt
      t.string :stdev_submitted_chrg_amt
      t.string :average_Medicare_payment_amt
      t.string :stdev_Medicare_payment_amt      
      t.timestamps
    end
  end
end
