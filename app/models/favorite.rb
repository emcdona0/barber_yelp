class Favorite < ActiveRecord::Base

  validates(:barber, { :presence => true })
validates(:barbershop, { :presence => true })
validates(:user, { :presence => true })

belongs_to :user
  belongs_to :barber
  belongs_to :barbershop

end
