class Removedevise < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :hobby
    remove_column :users, :encrypted_password 
    remove_column :users, :remember_created_at
    remove_column :users, :reset_password_sent_at
    remove_column :users, :reset_password_token
  end
end
