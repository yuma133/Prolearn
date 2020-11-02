class LangsController < ApplicationController
	before_action :login_check

	def html_css
		@lang_name = "HTML&CSS"
		if params[:search] == nil
			@ta_begis = Teach.where(lang: "htmlcss", level: "begi")
			@users_begis = User.where(id: @ta_begis.select("user_id"))
			@ta_intes = Teach.where(lang: "htmlcss", level: "inte")
			@users_intes = User.where(id: @ta_intes.select("user_id"))
			@ta_advas = Teach.where(lang: "htmlcss", level: "adva")
			@users_advas = User.where(id: @ta_advas.select("user_id"))
		elsif params[:search] == ""
			@ta_begis = Teach.where(lang: "htmlcss", level: "begi")
			@users_begis = User.where(id: @ta_begis.select("user_id"))
			@ta_intes = Teach.where(lang: "htmlcss", level: "inte")
			@users_intes = User.where(id: @ta_intes.select("user_id"))
			@ta_advas = Teach.where(lang: "htmlcss", level: "adva")
			@users_advas = User.where(id: @ta_advas.select("user_id"))
		else
			@ta_begis = Teach.where(lang: "htmlcss", level: "begi").where("income LIKE ? ", '%'+params[:search]+'%')
		  	@users_begis = User.where(id: @ta_begis.select("user_id"))
			@ta_intes = Teach.where(lang: "htmlcss", level: "inte").where("income LIKE ? ", '%'+params[:search]+'%')
			@users_intes = User.where(id: @ta_intes.select("user_id"))
			@ta_advas = Teach.where(lang: "htmlcss", level: "adva").where("income LIKE ? ", '%'+params[:search]+'%')
			@users_advas = User.where(id: @ta_advas.select("user_id"))
		end
	end

	def c
		@lang_name = "C言語"
		if params[:search] == nil
			@ta_begis = Teach.where(lang: "c", level: "begi")
			@users_begis = User.where(id: @ta_begis.select("user_id"))
			@ta_intes = Teach.where(lang: "c", level: "inte")
			@users_intes = User.where(id: @ta_intes.select("user_id"))
			@ta_advas = Teach.where(lang: "c", level: "adva")
			@users_advas = User.where(id: @ta_advas.select("user_id"))
		elsif params[:search] == ""
			@ta_begis = Teach.where(lang: "c", level: "begi")
			@users_begis = User.where(id: @ta_begis.select("user_id"))
			@ta_intes = Teach.where(lang: "c", level: "inte")
			@users_intes = User.where(id: @ta_intes.select("user_id"))
			@ta_advas = Teach.where(lang: "c", level: "adva")
			@users_advas = User.where(id: @ta_advas.select("user_id"))
		else
			@ta_begis = Teach.where(lang: "c", level: "begi").where("income LIKE ? ", '%'+params[:search]+'%')
		  	@users_begis = User.where(id: @ta_begis.select("user_id"))
			@ta_intes = Teach.where(lang: "c", level: "inte").where("income LIKE ? ", '%'+params[:search]+'%')
			@users_intes = User.where(id: @ta_intes.select("user_id"))
			@ta_advas = Teach.where(lang: "c", level: "adva").where("income LIKE ? ", '%'+params[:search]+'%')
			@users_advas = User.where(id: @ta_advas.select("user_id"))
		end
	end

	def java
		@lang_name = "Java"
		if params[:search] == nil
			@ta_begis = Teach.where(lang: "java", level: "begi")
			@users_begis = User.where(id: @ta_begis.select("user_id"))
			@ta_intes = Teach.where(lang: "java", level: "inte")
			@users_intes = User.where(id: @ta_intes.select("user_id"))
			@ta_advas = Teach.where(lang: "java", level: "adva")
			@users_advas = User.where(id: @ta_advas.select("user_id"))
		elsif params[:search] == ""
			@ta_begis = Teach.where(lang: "java", level: "begi")
			@users_begis = User.where(id: @ta_begis.select("user_id"))
			@ta_intes = Teach.where(lang: "java", level: "inte")
			@users_intes = User.where(id: @ta_intes.select("user_id"))
			@ta_advas = Teach.where(lang: "java", level: "adva")
			@users_advas = User.where(id: @ta_advas.select("user_id"))
		else
			@ta_begis = Teach.where(lang: "java", level: "begi").where("income LIKE ? ", '%'+params[:search]+'%')
		  	@users_begis = User.where(id: @ta_begis.select("user_id"))
			@ta_intes = Teach.where(lang: "java", level: "inte").where("income LIKE ? ", '%'+params[:search]+'%')
			@users_intes = User.where(id: @ta_intes.select("user_id"))
			@ta_advas = Teach.where(lang: "java", level: "adva").where("income LIKE ? ", '%'+params[:search]+'%')
			@users_advas = User.where(id: @ta_advas.select("user_id"))
		end
	end

	def ruby
		@lang_name = "Ruby"
		if params[:search] == nil
			@ta_begis = Teach.where(lang: "ruby", level: "begi")
			@users_begis = User.where(id: @ta_begis.select("user_id"))
			@ta_intes = Teach.where(lang: "ruby", level: "inte")
			@users_intes = User.where(id: @ta_intes.select("user_id"))
			@ta_advas = Teach.where(lang: "ruby", level: "adva")
			@users_advas = User.where(id: @ta_advas.select("user_id"))
		elsif params[:search] == ""
			@ta_begis = Teach.where(lang: "ruby", level: "begi")
			@users_begis = User.where(id: @ta_begis.select("user_id"))
			@ta_intes = Teach.where(lang: "ruby", level: "inte")
			@users_intes = User.where(id: @ta_intes.select("user_id"))
			@ta_advas = Teach.where(lang: "ruby", level: "adva")
			@users_advas = User.where(id: @ta_advas.select("user_id"))
		else
			@ta_begis = Teach.where(lang: "ruby", level: "begi").where("income LIKE ? ", '%'+params[:search]+'%')
		  	@users_begis = User.where(id: @ta_begis.select("user_id"))
			@ta_intes = Teach.where(lang: "ruby", level: "inte").where("income LIKE ? ", '%'+params[:search]+'%')
			@users_intes = User.where(id: @ta_intes.select("user_id"))
			@ta_advas = Teach.where(lang: "ruby", level: "adva").where("income LIKE ? ", '%'+params[:search]+'%')
			@users_advas = User.where(id: @ta_advas.select("user_id"))
		end

	end

	def python
		@lang_name = "Python"
		if params[:search] == nil
			@ta_begis = Teach.where(lang: "python", level: "begi")
			@users_begis = User.where(id: @ta_begis.select("user_id"))
			@ta_intes = Teach.where(lang: "python", level: "inte")
			@users_intes = User.where(id: @ta_intes.select("user_id"))
			@ta_advas = Teach.where(lang: "python", level: "adva")
			@users_advas = User.where(id: @ta_advas.select("user_id"))
		elsif params[:search] == ""
			@ta_begis = Teach.where(lang: "python", level: "begi")
			@users_begis = User.where(id: @ta_begis.select("user_id"))
			@ta_intes = Teach.where(lang: "python", level: "inte")
			@users_intes = User.where(id: @ta_intes.select("user_id"))
			@ta_advas = Teach.where(lang: "python", level: "adva")
			@users_advas = User.where(id: @ta_advas.select("user_id"))
		else
			@ta_begis = Teach.where(lang: "python", level: "begi").where("income LIKE ? ", '%'+params[:search]+'%')
		  	@users_begis = User.where(id: @ta_begis.select("user_id"))
			@ta_intes = Teach.where(lang: "python", level: "inte").where("income LIKE ? ", '%'+params[:search]+'%')
			@users_intes = User.where(id: @ta_intes.select("user_id"))
			@ta_advas = Teach.where(lang: "python", level: "adva").where("income LIKE ? ", '%'+params[:search]+'%')
			@users_advas = User.where(id: @ta_advas.select("user_id"))
		end
	end

	def js
		@lang_name = "JavaScript"
		if params[:search] == nil
			@ta_begis = Teach.where(lang: "js", level: "begi")
			@users_begis = User.where(id: @ta_begis.select("user_id"))
			@ta_intes = Teach.where(lang: "js", level: "inte")
			@users_intes = User.where(id: @ta_intes.select("user_id"))
			@ta_advas = Teach.where(lang: "js", level: "adva")
			@users_advas = User.where(id: @ta_advas.select("user_id"))
		elsif params[:search] == ""
			@ta_begis = Teach.where(lang: "js", level: "begi")
			@users_begis = User.where(id: @ta_begis.select("user_id"))
			@ta_intes = Teach.where(lang: "js", level: "inte")
			@users_intes = User.where(id: @ta_intes.select("user_id"))
			@ta_advas = Teach.where(lang: "js", level: "adva")
			@users_advas = User.where(id: @ta_advas.select("user_id"))
		else
			@ta_begis = Teach.where(lang: "js", level: "begi").where("income LIKE ? ", '%'+params[:search]+'%')
		  	@users_begis = User.where(id: @ta_begis.select("user_id"))
			@ta_intes = Teach.where(lang: "js", level: "inte").where("income LIKE ? ", '%'+params[:search]+'%')
			@users_intes = User.where(id: @ta_intes.select("user_id"))
			@ta_advas = Teach.where(lang: "js", level: "adva").where("income LIKE ? ", '%'+params[:search]+'%')
			@users_advas = User.where(id: @ta_advas.select("user_id"))
		end
	end

	def php
		@lang_name = "PHP"
		if params[:search] == nil
			@ta_begis = Teach.where(lang: "php", level: "begi")
			@users_begis = User.where(id: @ta_begis.select("user_id"))
			@ta_intes = Teach.where(lang: "php", level: "inte")
			@users_intes = User.where(id: @ta_intes.select("user_id"))
			@ta_advas = Teach.where(lang: "php", level: "adva")
			@users_advas = User.where(id: @ta_advas.select("user_id"))
		elsif params[:search] == ""
			@ta_begis = Teach.where(lang: "php", level: "begi")
			@users_begis = User.where(id: @ta_begis.select("user_id"))
			@ta_intes = Teach.where(lang: "php", level: "inte")
			@users_intes = User.where(id: @ta_intes.select("user_id"))
			@ta_advas = Teach.where(lang: "php", level: "adva")
			@users_advas = User.where(id: @ta_advas.select("user_id"))
		else
			@ta_begis = Teach.where(lang: "php", level: "begi").where("income LIKE ? ", '%'+params[:search]+'%')
		  	@users_begis = User.where(id: @ta_begis.select("user_id"))
			@ta_intes = Teach.where(lang: "php", level: "inte").where("income LIKE ? ", '%'+params[:search]+'%')
			@users_intes = User.where(id: @ta_intes.select("user_id"))
			@ta_advas = Teach.where(lang: "php", level: "adva").where("income LIKE ? ", '%'+params[:search]+'%')
			@users_advas = User.where(id: @ta_advas.select("user_id"))
		end
	end

	def rails
		@lang_name = "Ruby on rails"
		if params[:search] == nil
			@ta_begis = Teach.where(lang: "rails", level: "begi")
			@users_begis = User.where(id: @ta_begis.select("user_id"))
			@ta_intes = Teach.where(lang: "rails", level: "inte")
			@users_intes = User.where(id: @ta_intes.select("user_id"))
			@ta_advas = Teach.where(lang: "rails", level: "adva")
			@users_advas = User.where(id: @ta_advas.select("user_id"))
		elsif params[:search] == ""
			@ta_begis = Teach.where(lang: "rails", level: "begi")
			@users_begis = User.where(id: @ta_begis.select("user_id"))
			@ta_intes = Teach.where(lang: "rails", level: "inte")
			@users_intes = User.where(id: @ta_intes.select("user_id"))
			@ta_advas = Teach.where(lang: "rails", level: "adva")
			@users_advas = User.where(id: @ta_advas.select("user_id"))
		else
			@ta_begis = Teach.where(lang: "rails", level: "begi").where("income LIKE ? ", '%'+params[:search]+'%')
		  	@users_begis = User.where(id: @ta_begis.select("user_id"))
			@ta_intes = Teach.where(lang: "rails", level: "inte").where("income LIKE ? ", '%'+params[:search]+'%')
			@users_intes = User.where(id: @ta_intes.select("user_id"))
			@ta_advas = Teach.where(lang: "rails", level: "adva").where("income LIKE ? ", '%'+params[:search]+'%')
			@users_advas = User.where(id: @ta_advas.select("user_id"))
		end
	end

	def jquery
		@lang_name = "jQuery"
		if params[:search] == nil
			@ta_begis = Teach.where(lang: "jquery", level: "begi")
			@users_begis = User.where(id: @ta_begis.select("user_id"))
			@ta_intes = Teach.where(lang: "jquery", level: "inte")
			@users_intes = User.where(id: @ta_intes.select("user_id"))
			@ta_advas = Teach.where(lang: "jquery", level: "adva")
			@users_advas = User.where(id: @ta_advas.select("user_id"))
		elsif params[:search] == ""
			@ta_begis = Teach.where(lang: "jquery", level: "begi")
			@users_begis = User.where(id: @ta_begis.select("user_id"))
			@ta_intes = Teach.where(lang: "jquery", level: "inte")
			@users_intes = User.where(id: @ta_intes.select("user_id"))
			@ta_advas = Teach.where(lang: "jquery", level: "adva")
			@users_advas = User.where(id: @ta_advas.select("user_id"))
		else
			@ta_begis = Teach.where(lang: "jquery", level: "begi").where("income LIKE ? ", '%'+params[:search]+'%')
		  	@users_begis = User.where(id: @ta_begis.select("user_id"))
			@ta_intes = Teach.where(lang: "jquery", level: "inte").where("income LIKE ? ", '%'+params[:search]+'%')
			@users_intes = User.where(id: @ta_intes.select("user_id"))
			@ta_advas = Teach.where(lang: "jquery", level: "adva").where("income LIKE ? ", '%'+params[:search]+'%')
			@users_advas = User.where(id: @ta_advas.select("user_id"))
		end
	end

	private
	def login_check
      unless user_signed_in?
      flash[:alert] = "ログイン状態でないと表示できません"
      redirect_to root_path
      end
    end

end
