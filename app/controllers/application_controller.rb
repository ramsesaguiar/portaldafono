class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :destaques_no_rodape

  def destaques_no_rodape
  	@artigos_em_destaque = Article.where("destaque = 'S'").limit(4).order("created_at DESC")
  	@noticias_em_destaque = News.where("status = 'S'").limit(4).order("created_at DESC")
  end

  

end
