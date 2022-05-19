class ChangeColumn < ActiveRecord::Migration[7.0]
  def change
    rename_column :restaurants, :phone_nember, :phone_number
  end
end
