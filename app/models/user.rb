class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  after_create :send_mail
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         has_many :friends
         has_many :notifications, foreign_key: :recipient_id

    private
    
    def send_mail
		
		UsermailerMailer.welcome_email(self).deliver_later
		# so self is point to User.last
	end 



end
