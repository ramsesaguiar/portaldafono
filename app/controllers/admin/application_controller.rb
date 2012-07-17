class Admin::ApplicationController < ActionController::Base
  before_filter :authenticate
  layout "admin_application"
  protect_from_forgery
	
	#protected
	#def verifica_acesso
		#if  session[:current_user_id]== nil
			#redirect_to :controller => "login", :action => "index"
		#end
	#end
	
	protected
	def authenticate
		unless session[:current_user_id]
			session[:return_to] = request.url
			redirect_to :controller => "login", :action => "index"
			return false
		end
		return true
	end

 end
