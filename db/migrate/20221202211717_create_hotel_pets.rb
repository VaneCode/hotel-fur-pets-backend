class CreateHotelPets < ActiveRecord::Migration[7.0]
  def change
    create_table :hotel_pets do |t|
      t.string :name
      t.string :address
      t.integer :rating
      t.string :bio
      t.float :price
      t.string :continent

      t.timestamps
    end
  end
end
