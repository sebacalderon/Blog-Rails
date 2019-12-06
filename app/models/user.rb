class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  	devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable
 	has_many :articles
	#validates :username, presence: true, uniqueness: { case_sensitive: false }, length: { minimum: 3, maximum: 25 } 
 	#before_save { self.email = email.downcase }
end
