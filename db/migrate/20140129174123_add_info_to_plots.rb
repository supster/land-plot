class AddInfoToPlots < ActiveRecord::Migration
  def change
    add_column :plots, :deed_no, :string
    add_column :plots, :comments, :text
  end
end
