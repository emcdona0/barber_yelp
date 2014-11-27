class Rating < ActiveRecord::Base
  validates(:barber, { :presence => true })
  validates(:user, { :presence => true })
  validates(:rating, { :presence => true })

  belongs_to :barber
  belongs_to :user
end
