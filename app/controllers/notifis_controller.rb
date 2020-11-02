class NotifisController < ApplicationController

  def index
    @notifications = current_user.passive_notifis.page(params[:page]).per(10)
    @notifications.where(checked: false).each do |notification|
 		   notification.update_attributes(checked: true)
    end
  end

   def destroy
        @notifications = current_user.passive_notifis.find(params[:id]).destroy
        redirect_to notifis_path
    end
end
