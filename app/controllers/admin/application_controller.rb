class Admin::ApplicationController < ActionController::Base
  layout "admin_application"
  protect_from_forgery
  
	protected
	def verifica_acesso
		if  session[:current_user_id]== nil
			redirect_to :controller => "login", :action => "index"
		end
	end

 end
