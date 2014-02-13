class AddInfo3ToPlot < ActiveRecord::Migration
  def change
    add_column :plots, :tax_price, :decimal
    add_column :plots, :appr_price, :decimal
    add_column :plots, :personal_tax, :decimal
    add_column :plots, :special_tax, :decimal
    add_column :plots, :local_tax, :decimal
    add_column :plots, :other_fee, :decimal
    add_column :plots, :common_charge, :decimal

    remove_column :plots, :price
    remove_column :plots, :tax_fee
  end
end