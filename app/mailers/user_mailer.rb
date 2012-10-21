class UserMailer < ActionMailer::Base
  default from: "mknparreira@gmail.com"

  def cadastro_confirmado(obj)
    @user = obj
    @url = "http://www.portaldafono.com"
    mail(:to => @user.email, :subject => "Portal da fono | Cadastro realizado com sucesso")
  end

  def fale_conosco_enviado(obj)
    @contact = obj
    @url = "http://www.portaldafono.com"
      mail(:to => @contact.email, :subject => "Portal da fono | Contato enviado com sucesso")
  end

end
