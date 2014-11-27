class Hood < ActiveRecord::Base
  validates(:name, { :uniqueness => true, :presence => true })
  validates(:city, { :presence => true })
  validates(:state,{ :presence => true })


  has_many :barbershops
end
