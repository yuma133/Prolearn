class Room < ApplicationRecord
	  has_many :messages, dependent: :destroy
	  has_many :entries, dependent: :destroy

    has_many :notifis, dependent: :destroy

    def save_notification_message!(current_user, message_id, visited_id)
   		 notification = current_user.active_notifis.new(
    	  message_id: message_id,
          room_id: id,
  	      visited_id: visited_id,
 		  action: 'message'
         )
   if notification.visitor_id == notification.visited_id
      notification.checked = true
   end
    notification.save if notification.valid?
   end
end
