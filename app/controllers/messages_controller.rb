class MessagesController < ApplicationController
  before_action :authenticate_user!, :only => [:create]

  def create
    if Entry.where(user_id: current_user.id, room_id: params[:message][:room_id]).present?
      @message = Message.create(params.require(:message).permit(:user_id, :content, :room_id).merge(:user_id => current_user.id))

      other_user = Entry.select(:user_id).where(room_id: @message.room_id).where.not(user_id: current_user.id)
          other_user.each do |u|
              @room = @message.room
              @room.save_notification_message!(current_user, @message.id, u.user_id)
          end

      redirect_to "/rooms/#{@message.room_id}"
    else
      redirect_back(fallback_location: root_path)
    end
  end

end
