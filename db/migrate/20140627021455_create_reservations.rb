class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.datetime "start_time"
      t.integer "restaurant_id"
      t.integer "customer_id"
      t.integer "party_size", :default => 1
    end
  end
end
