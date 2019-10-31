class CreateDeepData < ActiveRecord::Migration[5.2]
  def change
    create_table :deep_data do |t|
      t.belongs_to :turtle, foreign_key: true
      t.float :temperature
      t.float :deep
      t.float :light
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
