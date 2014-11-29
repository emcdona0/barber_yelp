class ChangeStartAndEndTimeToDateTime < ActiveRecord::Migration
  def change
    change_column :works_ats, :start_time,  :datetime
    change_column :works_ats, :end_time,  :datetime
  end
end
