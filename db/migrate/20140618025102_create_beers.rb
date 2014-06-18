class CreateBeers < ActiveRecord::Migration
  def change
    create_table :beers do |t|
      t.integer :bid
      t.string :beer_name
      t.float :beer_abv
      t.string :beer_description
      t.string :beer_style
      t.boolean :is_in_production
      t.integer :rating_count
      t.float :rating_score
      t.integer :brewery_id

      t.timestamps
    end
  end
end
