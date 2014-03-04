class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.boolean :admin
      t.string :remember_token
      t.string :password_digest

      t.timestamps
    end

    add_index  :users, :remember_token
  end
end
