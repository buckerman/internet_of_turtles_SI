class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.integer Time.now.getutc
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :sex
      t.integer :photo_id
      t.date :registration_date
      t.text :description
      t.string :occupation
      t.string :institution

      t.timestamps
    end
  end
end
