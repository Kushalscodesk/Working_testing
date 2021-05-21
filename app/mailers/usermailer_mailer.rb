class UsermailerMailer < ApplicationMailer

	default from: 'notifications@example.com'
	   def welcome_email(conversation)
	      @conversation = conversation
	      @url  = 'test.url.com'
	      mail(to: @conversation.recipient, subject: 'Welcome to My Awesome Site')
	   end
	   
end
