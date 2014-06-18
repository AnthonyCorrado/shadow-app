class CreateBreweries < ActiveRecord::Migration
  def change
    create_table :breweries do |t|
      t.integer :brewery_id
      t.string :brewery_name
      t.string :brewery_city
      t.string :brewery_state
      t.string :country_name
      t.string :lat
      t.string :lng

      t.timestamps
    end
  end
end
