module Admin::ApplicationHelper
	def session_user
		@session_user ||= Author.find(:first, :conditions => ['id = ?', session[:current_user_id]])
	end
end
