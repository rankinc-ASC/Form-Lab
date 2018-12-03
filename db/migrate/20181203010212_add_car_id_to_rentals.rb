class AddCarIdToRentals < ActiveRecord::Migration[5.2]
  def change
    add_column :rentals, :car_id, :integer
  end
end
