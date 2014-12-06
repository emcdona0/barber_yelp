class AddLatAndLongtoHoods < ActiveRecord::Migration
  def change
    add_column :hoods, :longitude, :float
    add_column :hoods, :latitude, :float
  end
end
