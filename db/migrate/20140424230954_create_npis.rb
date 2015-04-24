class CreateNpis < ActiveRecord::Migration
  def change
    create_table :npis do |t|
      t.integer :npi
      t.string :first_name
      t.string :name
      t.text :address
      
      t.string :city
      t.string :state
      t.integer :zip
      t.string :tax_code
      t.string :name
      t.text :tax_description
      t.string :tax_url
      t.timestamps
    end
  end
end
