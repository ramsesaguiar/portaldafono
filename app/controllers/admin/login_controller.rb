class Admin::LoginController < Admin::ApplicationController
  skip_before_filter :authenticate	
  
  def index
	if   session[:current_user_id]
		redirect_to :controller => "index", :action => "index"
	end
	
	
  end
  
  	def do_login
		if request.post?
			user_email = params[:login][:email]
			user_senha = params[:login][:senha]
			@user = Author.find_by_email_and_senha(user_email, user_senha)
			if @user
				session[:current_user_id] = @user.id
				session[:nome] = @user.nome
				if session[:return_to] && !session[:return_to].include?(url_for(:action => "index"))
					redirect_to session[:return_to]
					session[:return_to] = nil
				else
					redirect_to :controller => "index", :action => "index"
				end
			else
				flash[:notice] = "Login e senha invalidos."
				render action: "index"
			end
		end
	end
	
	def logout
		session[:current_user_id] = nil
		session[:nome] = nil
		#redirect_to root_url
		redirect_to :controller => "login", :action => "index"
	end
	
	
end
