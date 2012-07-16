class Admin::IndexController < Admin::ApplicationController
	def index
		render :text => session[:current_user_email]
	end

end
