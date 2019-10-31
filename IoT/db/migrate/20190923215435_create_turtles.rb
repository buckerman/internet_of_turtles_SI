class CreateTurtles < ActiveRecord::Migration[5.2]
  def change
    create_table :turtles do |t|
      t.string :name
      t.string :sex
      t.string :specie
      t.datetime :module_installation_date
      t.date :estimated_birthday
      t.belongs_to :user, foreign_key: true
      t.text :description

      t.timestamps
    end
  end
end
