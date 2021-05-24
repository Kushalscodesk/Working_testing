class MstatsController < ApplicationController
	def index
		@mdata = Message.group('user_id').count
		@cdata = Conversation.all
	end
end
