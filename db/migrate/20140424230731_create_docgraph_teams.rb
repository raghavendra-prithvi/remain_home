class CreateDocgraphTeams < ActiveRecord::Migration
  def change
    create_table :docgraph_teams do |t|
      t.integer :npi
      t.integer :npi_dest
      t.integer :count
      t.integer :patient_count
      t.integer :same_day_count
      t.timestamps
    end
  end
end
