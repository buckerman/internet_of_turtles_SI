class CreateTurtles < ActiveRecord::Migration[6.0]
  def change
    create_table :turtles do |t|
      t.integer :turtle_id
      t.string :integer
      t.string :name
      t.string :sex
      t.string :species
      t.timestamp :fixation_date
      t.timestamp :birthday
      t.integer :researcher_id
      t.text :description

      t.timestamps
    end
  end
end
