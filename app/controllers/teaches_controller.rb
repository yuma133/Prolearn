class TeachesController < ApplicationController

	def new
		@user = User.find(params[:user_id])
		@teach = Teach.new
	end

	def create
		@teach = Teach.new(teach_params)
		@teach_ori = Teach.where(user_id: current_user.id)
		@teach_ori = @teach_ori.where(lang: @teach.lang, level: @teach.level)
		@teach.user_id = current_user.id
		@teach_ori.each do |tori|
			if tori.user_id == @teach.user_id
				@teach.exit = 1
			end
		end
		if @teach.exit == 1
			flash[:alert] = "既に追加されています"
			redirect_to new_user_teach_path(@teach.user_id)
		else
			@teach.save
            flash[:notice] = "追加に成功しました"
		 	redirect_to "/#{@teach.lang}"
		end
	end

	def edit
		@user = User.find(params[:user_id])
		@teach = Teach.find(params[:id])
	end

	def update
		@teach = Teach.find(params[:id])
		@teach.user_id = current_user.id
		if @teach.update(teach_params)
			flash[:notice] = "変更に成功しました"
			redirect_to "/#{@teach.lang}"
		else
			flash[:alert] = "必要事項を記入してください"
			redirect_to edit_user_teach_path(@teach.user_id, @teach.id)
		end
	end

	def destroy
		teach = Teach.find(params[:user_id])
		lang = teach.lang
		if teach.delete
			redirect_to "/#{lang}"
		else
			redirect_to edit_user_teach_path(@teach.user_id, @teach.id)
		end
	end

	private
	def teach_params
	params.require(:teach).permit(:lang, :level, :income, :career, :exit)
    end
end
