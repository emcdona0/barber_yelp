class Barber < ActiveRecord::Base

  validates(:username, { :uniqueness => true,:presence => true })
  validates(:first_name, { :presence => true })
  validates(:last_name, { :presence => true })
  validates(:telephone, { :presence => true })


  belongs_to :barbershop
  belongs_to :works_at
  belongs_to :rating
  belongs_to :favorite

end
