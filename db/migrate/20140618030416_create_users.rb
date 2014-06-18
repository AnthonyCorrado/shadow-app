class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :uid
      t.string :user_name
      t.string :location
      t.date :user_birthday

      t.timestamps
    end
  end
end
