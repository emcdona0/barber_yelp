class CreateBarbershops < ActiveRecord::Migration
  def change
    create_table :barbershops do |t|
      t.string :name
      t.string :address
      t.integer :hood_id
      t.string :telephone

      t.timestamps

    end
  end
end
