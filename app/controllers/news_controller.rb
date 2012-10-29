class NewsController < ApplicationController
  # GET /news
  # GET /news.json
  def index
    @news = News.find(:all, :include => :author, :order => 'created_at DESC')

     set_meta_tags :title => 'Notícias', 
    :description => 'Tudo que acontece no mundo da fono, voc&ecirc; encontra aqui', 
    :keywords => 'fonoaudiologia, fonoaudiologia noticias , materias fonoaudiologia, fonoaudiologista, duvidas fonoaudiologia '

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @news }
    end
  end

  # GET /news/1
  # GET /news/1.json
  def show
    @news = News.find(params[:id])

    set_meta_tags :title =>  @news.titulo, 
    :description => 'Tudo que acontece no mundo da fono, voc&ecirc; encontra aqui', 
    :keywords => 'fonoaudiologia, fonoaudiologia noticias , materias fonoaudiologia, fonoaudiologista, duvidas fonoaudiologia '

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @news }
    end
  end

  
end
