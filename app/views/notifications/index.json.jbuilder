json.array! @notifications do |notification|
	#json.recipient notification.recipient_id
	json.actor notification.actor.email
	json.read notification.read_at

end