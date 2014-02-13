class CreateContractors < ActiveRecord::Migration
  def change
    create_table :contractors do |t|
      t.string :name

      t.timestamps
    end

    change_table :plots	do |t|
    	t.references :contractor, index: true 
    end
  end
end
