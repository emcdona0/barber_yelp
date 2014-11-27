class CreateWorksAts < ActiveRecord::Migration
  def change
    create_table :works_ats do |t|
      t.integer :barbershop_id
      t.integer :barber_id
      t.float :start_time
      t.float :end_time
      t.string :day_of_week

      t.timestamps

    end
  end
end
