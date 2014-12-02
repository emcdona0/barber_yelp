class Barber < ActiveRecord::Base

  validates(:username, { :uniqueness => true,:presence => true })
  validates(:first_name, { :presence => true })
  validates(:last_name, { :presence => true })
  validates(:telephone, { :presence => true })

  has_many :barbershops, :through => :works_ats
  has_many :works_ats
  has_many :ratings
  belongs_to :favorite

end
