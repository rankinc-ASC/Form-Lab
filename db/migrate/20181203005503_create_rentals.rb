class CreateRentals < ActiveRecord::Migration[5.2]
  def change
    create_table :rentals do |t|
      t.string :customerName
      t.string :customerContact
      t.integer :numDays
      t.integer :mileage
      t.boolean :returned
      t.string :confirmCode

      t.timestamps
    end
  end
end
