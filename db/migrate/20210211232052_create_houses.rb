class CreateHouses < ActiveRecord::Migration[6.0]
  def change
    create_table :houses do |t|
      t.string :house_type
      t.integer :number_of_rooms
      t.string :location
      t.integer :price
      t.date :built_date
      t.text :description
      t.string :image

      t.timestamps
    end
  end
end
