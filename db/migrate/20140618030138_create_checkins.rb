class CreateCheckins < ActiveRecord::Migration
  def change
    create_table :checkins do |t|
      t.integer :checkin_id
      t.datetime :created_at
      t.float :rating_score
      t.integer :uid
      t.integer :bid
      t.integer :brewery_id
      t.integer :venue_id
      t.string :venue_city
      t.string :venue_state
      t.float :lat
      t.float :lng

      t.timestamps
    end
  end
end
