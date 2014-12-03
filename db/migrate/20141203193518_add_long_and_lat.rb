class AddLongAndLat < ActiveRecord::Migration
  def change
    add_column :barbershops, :longitude, :float
    add_column :barbershops, :latitude, :float
  end
end
