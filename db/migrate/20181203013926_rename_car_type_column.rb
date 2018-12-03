class RenameCarTypeColumn < ActiveRecord::Migration[5.2]
  def change
    rename_column :car_types, :type, :modelType
  end
end
