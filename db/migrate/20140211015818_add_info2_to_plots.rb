class AddInfo2ToPlots < ActiveRecord::Migration
  def change
     change_table :plots do |t|
      t.references :phase, index: true 
    end   
    add_column :plots, :transfer_date, :date
    add_column :plots, :transfer_fee, :decimal
    add_column :plots, :tax_fee, :decimal
    add_column :plots, :contractor_pay_no, :integer
  end
end
