class AddStatusToPlot < ActiveRecord::Migration
def change
    change_table :plots do |t|
      t.references :status, index: true 
    end
  end
  def down
    change_table :plots do |t|
      t.remove :status
    end
  end
end
