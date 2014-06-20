class AddBeerStyleToStyles < ActiveRecord::Migration
  def change
    add_column :styles, :beer_style, :string
  end
end
