class User < ActiveRecord::Base
 validates(:username, { :uniqueness => true,:presence => true })
  validates(:first_name, { :presence => true })
  validates(:last_name, { :presence => true })
  validates(:telephone, { :presence => true })

  has_many :favorites
  has_many :ratings
end
