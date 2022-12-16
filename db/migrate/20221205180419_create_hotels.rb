class CreateHotels < ActiveRecord::Migration[7.0]
  def change
    create_table :hotels do |t|
      t.string :name
      t.string :location
      t.integer :rating, default: 0
      t.float :price, default: 0.0
      t.string :photo, array: true
      t.text :description

      t.timestamps
    end
  end
end
