class CreateBuyers < ActiveRecord::Migration
  def change
    create_table :buyers do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :address
      t.string :phone

      t.timestamps
    end
  end
end
