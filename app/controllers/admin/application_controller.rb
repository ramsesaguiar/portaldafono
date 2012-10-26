class Admin::ApplicationController < ActionController::Base
  before_filter :authenticate
  before_filter :instantiate_controller_and_action_names
  layout "admin_application"
  protect_from_forgery

	protected
	def authenticate
		unless session[:admin_current_user_id]
			session[:return_to] = request.url
			redirect_to :controller => "login", :action => "index"
			return false
		end
		return true
	end
	
	def instantiate_controller_and_action_names
		@current_action = action_name
		@current_controller = controller_name
	end

 end
