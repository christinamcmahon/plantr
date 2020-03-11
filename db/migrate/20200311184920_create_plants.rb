class CreatePlants < ActiveRecord::Migration[6.0]
  def change
    create_table :plants do |t|
      t.string :name
      t.string :notes
      t.integer :water_frequency
      t.string :image_url

      t.timestamps
    end
  end
end
