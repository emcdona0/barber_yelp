class Barbershop < ActiveRecord::Base
  validates(:name, { :presence => true })
  validates(:address, { :uniqueness => true, :presence => true })
  validates(:hood_id, { :presence => true })
  validates(:telephone, { :presence => true })

  has_many :works_ats
  has_many :barbers, :through => :works_ats
  belongs_to :hood

end
