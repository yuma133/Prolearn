class TeachesController < ApplicationController

	def new
		@user = User.find(params[:user_id])
		@teach = Teach.new
	end

	def create
		@teach_ori = Teach.where(lang: params[:lang], level: params[:level])
		@teach = Teach.new(teach_params)
		# 二重追加させないようにできない
		@teach.user_id = current_user.id
		if @teach_ori.present?
			flash[:alert] = "追加できませんでした"
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
	params.require(:teach).permit(:lang, :level, :income, :career)
    end
end
