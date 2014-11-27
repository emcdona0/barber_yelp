class CreateBarbers < ActiveRecord::Migration
  def change
    create_table :barbers do |t|
      t.string :username
      t.string :first_name
      t.string :last_name
      t.string :telephone
      t.float :average_rating

      t.timestamps

    end
  end
end
