class InterviewsController < ApplicationController
  # GET /interviews
  # GET /interviews.json
  def index
    @interviews = Interview.find(:all, :order => 'created_at DESC')

    set_meta_tags :title => 'Entrevista', 
    :description => 'Publicaremos entrevistas com os principais influentes do mundo da fonoaudiologia', 
    :keywords => 'entrevista, fonoaudiologia, profissional de fonoaudiologia'

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @interviews }
    end
  end

  # GET /interviews/1
  # GET /interviews/1.json
  def show
    @interviews = Interview.find(params[:id])

    set_meta_tags :title => @interviews.nome_entrevistado, 
    :description => 'Publicaremos entrevistas com os principais influentes do mundo da fonoaudiologia', 
    :keywords => 'entrevista, fonoaudiologia, profissional de fonoaudiologia'

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @interviews }
    end
  end

end
