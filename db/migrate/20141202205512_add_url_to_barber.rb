class AddUrlToBarber < ActiveRecord::Migration
  def change
    add_column :barbers, :avatar_url, :string
  end
end
