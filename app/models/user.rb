class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable

   validates(:email, { :uniqueness => true,:presence => true })

  # validates(:username, { :uniqueness => true,:presence => true })
  # validates(:first_name, { :presence => true })
  # validates(:last_name, { :presence => true })
  # validates(:telephone, { :presence => true })

  has_many :favorites
  has_many :ratings
end
