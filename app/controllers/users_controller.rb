class UsersController < ApplicationController
	before_action :authenticate_user!

	def show
		@user = User.find(params[:id])
		@currentUserEntry=Entry.where(user_id: current_user.id)
   		@userEntry=Entry.where(user_id: @user.id)
   		if @user.id == current_user.id
   	    else
       	 @currentUserEntry.each do |cu|
    	    @userEntry.each do |u|
          		 if cu.room_id == u.room_id then
        		    @isRoom = true
       		        @roomId = cu.room_id
       		     end
       		 end
     	 end
        if @isRoom
   	    else
    	    @room = Room.new
      	    @entry = Entry.new
        end
      end
    end

	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])
		if @user.update(user_params)
			flash[:notice] = "プロフィールの編集に成功しました。"
			redirect_to user_path(@user.id)
		else
			render :edit
		end
	end

	private
	def user_params
		params.require(:user).permit(:name, :age, :sex, :intro, :profile_image, :port)
	end
end
