class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password
      t.string :photo_id
      t.string :gender
      t.date :birthday
      t.integer :telephone
      t.boolean :researcher
      t.string :career
      t.string :institution
      t.text :description

      t.timestamps
    end
  end
end
