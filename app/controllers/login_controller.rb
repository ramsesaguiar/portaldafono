class LoginController < ApplicationController
 
def index
end

def create
	@user = User.where("uid = ?", auth_hash["uid"]).first
	if @user
		session[:current_user_id] = @user.id
		session[:apelido] = @user.apelido
		session[:email] = @user.email
		session[:nome] = @user.nome
		session[:url_image] = @user.url_image
		redirect_to :controller => "index", :action => "index"
	else
		new_user = User.new
		new_user.uid = auth_hash["uid"]
		new_user.nome = auth_hash["info"]["name"]
		new_user.apelido = auth_hash["info"]["nickname"]
		new_user.email = auth_hash["info"]["email"]
		new_user.url_image = auth_hash["info"]["image"]
		new_user.localizacao = auth_hash["info"]["location"]	
		new_user.status = 1
		new_user.genero = auth_hash["extra"]["raw_info"]["gender"]
		new_user.data_nasc = auth_hash["extra"]["raw_info"]["birthday"]
		
		if new_user.save
			@user = User.where("uid = ?", new_user.uid).first
			UserMailer.cadastro_confirmado(new_user).deliver
			session[:current_user_id] = @user.id
			session[:apelido] = @user.apelido
			session[:email] = @user.email
			session[:nome] = @user.nome
			session[:url_image] = @user.url_image
			redirect_to :controller => "index", :action => "index"
		end	

	end
  
end

def failure

end

def destroy
  session[:current_user_id] = nil
  redirect_to :controller => "index", :action => "index"
end




 protected
  def auth_hash
    request.env['omniauth.auth']
  end


end
