class CreateForemen < ActiveRecord::Migration
  def change
    create_table :foremen do |t|
      t.string :name

      t.timestamps
    end

    change_table :plots do |t|
    	t.references :foreman, index: true
    end
  end
end
