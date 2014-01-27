class CreatePlots < ActiveRecord::Migration
  def change
    create_table :plots do |t|
      t.string :code
      t.string :home_type
      t.float :size
      t.references :map
      t.references :buyer

      t.timestamps
    end
  end
end
