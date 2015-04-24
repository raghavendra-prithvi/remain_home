class CreateDocgraphRxes < ActiveRecord::Migration
  def change
    create_table :docgraph_rxes do |t|
      t.integer :npi
      t.text :bn
      t.integer :claim_count
      t.integer :claim_count_daw1
      t.integer :claim_count_cmpnd2
      t.integer :quantity_sum
      t.integer :day_supply_sum
      t.integer :gross_drug_cost_sum
      t.timestamps
    end
  end
end
