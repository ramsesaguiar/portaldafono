class ArticlesController < ApplicationController
  # GET /articles
  # GET /articles.json
  def index
    @articles = Article.find(:all, :include => :author, :order => 'created_at DESC')

    set_meta_tags :title => 'Artigos', 
    :description => 'Artigos publicados por nossos profissionais, estão sob domínio público ou enviados por você, aparecem aqui', 
    :keywords => 'fonoaudiologia, fonoaudiologia exercicios , curso fonoaudiologia, fonoaudiologista, artigos fonoaudiologia '

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @articles }
    end
  end

  # GET /articles/1
  # GET /articles/1.json
  def show
    @article = Article.find(params[:id])

    set_meta_tags :title => @article.titulo, 
    :description => 'Artigos publicados por nossos profissionais, estão sob domínio público ou enviados por você, aparecem aqui', 
    :keywords => @article.palavras_chave

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @article }
    end
  end

end
