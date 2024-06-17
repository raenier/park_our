class CreateParkingSpaces < ActiveRecord::Migration[7.1]
  def change
    create_table :parking_spaces do |t|
      t.string :name
      t.string :entrance_distances
      t.integer :size

      t.timestamps
    end
  end
end
