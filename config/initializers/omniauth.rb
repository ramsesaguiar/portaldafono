Rails.application.config.middleware.use OmniAuth::Builder do
	# ENV['FACEBOOK_KEY']
	# ENV['FACEBOOK_SECRET']
	#:ssl => {:ca_path => '/etc/ssl/certs'} or /usr/lib/ssl/cert for ubuntu10.10 or /etc/ssl/certs/ca-certificates.crt
	#:ssl => {:ca_path => '/usr/lib/ssl/certs/ca-certificates.crt'} for HEROKU
	# Linux users can type in the terminal:
	#openssl version -a to determine their system ssl certs folder, listed as OPENSSLDIR

   # Essa linha abaixo, somente deve ser usado em ambiente de desenvolvimento/windows
   # NÃO É RECOMENDADO SEU USO EM PRODUÇÃO. TALVEZ NEM FUNCIONE.	
   OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE

   #DEVELOPMENT ::: "164299493693982", "d45a843c9f1f7674a3af06e48a6fa503"
   #TO PRODUCTION ::::  "360004484092897", "0408ea8d889261f4abd5e4a581e66d3a"


  provider :facebook, "164299493693982", "d45a843c9f1f7674a3af06e48a6fa503", 
     :client_options => {
     	:ssl => {:ca_path => '/etc/ssl/certs'}
     },
     :scope => 'email, user_birthday, user_location, read_stream, publish_stream', 
  	 :display => 'popup',
  	 :auth_type => 'https',
  	 :secure_image_url => true

end