class Admin::LoginController < Admin::ApplicationController
  
  def index
		
  end
  
  def do_login
	user_email = params[:login][:email]
	user_senha = params[:login][:senha]
	@author = Author.find_all_by_email_and_senha(user_email, user_senha)
	if @author.nil? 
		redirect_to :action => "index"
		#flash[:notice] = 'Usu&aacute;rio ou senha incorretos'
	else
		@author.each do |t| 
			session[:current_user_id] =  t.id
			session[:current_user_nickname] = t.apelido
			session[:current_user_name] = t.nome
			session[:current_user_email] = t.email
		end
		redirect_to :controller => "index", :action => "index"
	end
	#render :text => @author.to_yaml
	#@author.each do |t| 
		#render :text => t.id
	#end
	end
	
	def destroy
		session[:current_user_id] = nil
		session[:current_user_nickname] = nil
		session[:current_user_name] = nil
		session[:current_user_email] = nil
		#redirect_to root_url
		redirect_to :controller => "login", :action => "index"
	end
	
	
end
