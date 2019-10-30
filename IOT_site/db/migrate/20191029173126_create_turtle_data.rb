class CreateTurtleData < ActiveRecord::Migration[6.0]
  def change
    create_table :turtle_data do |t|
      t.belongs_to :turtle, null: false, foreign_key: true
      t.float :temperature
      t.float :light
      t.float :depth
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
