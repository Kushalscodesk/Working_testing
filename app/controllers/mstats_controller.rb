class MstatsController < ApplicationController
	def index
		@data = Message.group('user_id').count
	end
end
