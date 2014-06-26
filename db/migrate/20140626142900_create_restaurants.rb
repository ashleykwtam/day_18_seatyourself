class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.text :description
      t.string :cuisine
      t.string :location
      t.integer :phone_number
      t.time :hours_open
      t.integer :max_occupancy

      t.timestamps
    end
  end
end
