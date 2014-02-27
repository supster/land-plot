class AddInfo4toPlot < ActiveRecord::Migration
  def up
  	add_column :plots, :buyer_name, :string
  	add_column :plots, :buyer_phone, :string
  end

  def down
  	remove_column :plots, :buyer_name
  	remove_column :plots, :buyer_phone
  end
end
