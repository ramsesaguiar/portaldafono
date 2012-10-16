class UserMailer < ActionMailer::Base
  default from: "mknparreira@gmail.com"

  def welcome_email(user)
    @user = user
    @url  = "http://example.com/login"
    mail(:to => user.email, :subject => "Welcome to My Awesome Site")
  end

  def fale_conosco_enviado(user)
    @user = User.where("email = ?", user["email"]).first
    @url = "http://example.com/login"
      mail(:to => user["email"], :subject => "Portal da fono | Contato enviado com sucesso")

  end

end
