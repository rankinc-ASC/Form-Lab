class AddDailyCostToCarTypes < ActiveRecord::Migration[5.2]
  def change
    add_column :car_types, :dailyCost, :double
  end
end
