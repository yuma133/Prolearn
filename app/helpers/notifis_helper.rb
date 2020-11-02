module NotifisHelper

	def unchecked_notifications
   		 @notifications=current_user.passive_notifis.where(checked: false)
    end

end
