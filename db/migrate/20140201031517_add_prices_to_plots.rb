class AddPricesToPlots < ActiveRecord::Migration
  def change
    add_column :plots, :base_price, :decimal, default: 0
    add_column :plots, :extra_land_price, :decimal, default: 0
    add_column :plots, :house_add_on_price, :decimal, default: 0
    add_column :plots, :plot_add_on_price, :decimal, default: 0

    change_column_default :plots, :price, 0
  end

  def down
    remove_column :plots, :base_price
    remove_column :plots, :extra_land_price
    remove_column :plots, :house_add_on_price
    remove_column :plots, :plot_add_on_price
  end
end
