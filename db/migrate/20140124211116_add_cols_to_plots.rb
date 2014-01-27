class AddColsToPlots < ActiveRecord::Migration
  def change
    add_column :plots, :row, :integer
    add_column :plots, :col, :integer
    add_column :plots, :group_id, :integer
    add_column :plots, :price, :decimal
  end
end
