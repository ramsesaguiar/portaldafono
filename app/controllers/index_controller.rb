class IndexController < ApplicationController
	def index
		@superdestaques = SuperHighlight.where("status = 'S' AND data_ini < NOW() AND data_fim > NOW()").order("posicao ASC").limit(3)
		@artigo = Article.where("destaque = 'S'").first
		@noticia = News.where("status = 'S'").order("created_at DESC").first
		@duvida	 = Doubt.where("status = 'S'").order("created_at DESC").first
		@debate	 = Discussion.where("status = 'S' AND data_inicio < NOW() AND data_fim > NOW()").order("created_at DESC").first
    set_meta_tags :title => 'Seja bem vindo ao portal da fonoaudiologia', 
    :description => 'O Portal da fono é o seu canal para o mundo da fonoaudiologia. Em nosso portal você encontrará: Notícias, Artigos, recomendação de livros, entrevistas com os principais nomes da área. participar de debates, enviar suas dúvidas e muito mais! Descubra esse incrível mundo da fonoaudiologia. ', 
    :keywords => 'fonoaudiologia, fonoaudiologia exercicios , curso fonoaudiologia, fonoaudiologista, artigos fonoaudiologia, fonoaudiologo '
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
