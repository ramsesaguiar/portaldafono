module ApplicationHelper

  def current_user
  	session if !session[:current_user_id].nil?
  end

end
