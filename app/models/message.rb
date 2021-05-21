class Message < ApplicationRecord
	
	belongs_to :conversation
 	belongs_to :user 
 	validates_presence_of :body, :conversation_id, :user_id 
 	
 	def message_time
  	 created_at.strftime('%m/%d/%y at %l:%M %p')
    end

    private
    def send_mail	
		UsermailerMailer.welcome_email(self).deliver_later
		# so self is point to User.last
	end 

end
