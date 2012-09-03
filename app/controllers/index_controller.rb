class IndexController < ApplicationController
	def index
		@superdestaques = SuperHighlight.where("status = 'S' AND data_ini < NOW() AND data_fim > NOW()").order("posicao ASC").limit(3)
		@artigo = Article.where("destaque = 'S'").first
		@noticias = News.where("status = 'S'").order("created_at DESC").limit(4)
		@duvida	 = Doubt.where("status = 'S'").order("created_at DESC").first
		@debate	 = Discussion.where("status = 'S' AND data_inicio < NOW() AND data_fim > NOW()").order("created_at DESC").first
	end

	def subscribe_to_newsletter
		@newsletter = Newsletter.new
    	@newsletter.email = params[:news_email]
    		resposta = Hash.new
    		if Newsletter.where("email = ?", params[:news_email]).first
      			resposta["message"] =  "Esse email já foi cadastrado"
      			resposta["status"]  =  false
    		else
      			@newsletter.save
      			resposta["message"]  = "Email cadastrado com sucesso"
      			resposta["status"]   = true
      		end
      		respond_to do |format|
    			format.json { render :json => resposta.to_json }
    		end		
	end
end
