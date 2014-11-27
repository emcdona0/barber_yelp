class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :barber_id
      t.integer :user_id
      t.float :rating
      t.text :comment

      t.timestamps

    end
  end
end
