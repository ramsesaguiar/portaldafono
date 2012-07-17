class Admin::LoginController < Admin::ApplicationController
  skip_before_filter :authenticate	
  
  def index
	if   session[:current_user_id]
		redirect_to :controller => "index", :action => "index"
	end
	
	
  end
  
  #def do_login
	#user_email = params[:login][:email]
	#user_senha = params[:login][:senha]
	#@author = Author.find_all_by_email_and_senha(user_email, user_senha)
	#if @author.nil? 
		#redirect_to :action => "index"
		#flash[:notice] = 'Usu&aacute;rio ou senha incorretos'
	#else
		#@author.each do |t| 
			#session[:current_user_id] =  t.id
			#session[:current_user_nickname] = t.apelido
			#session[:current_user_name] = t.nome
			#session[:current_user_email] = t.email
		#end
		#redirect_to :controller => "index", :action => "index"
	#end
	#render :text => @author.to_yaml
	#@author.each do |t| 
		#render :text => t.id
	#end
	#end
	
	def do_login
		if request.post?
			user_email = params[:login][:email]
			user_senha = params[:login][:senha]
			@user = Author.find_by_email_and_senha(user_email, user_senha)
			if @user
				session[:current_user_id] = @user.id
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
		#redirect_to root_url
		redirect_to :controller => "login", :action => "index"
	end
	
	
end
