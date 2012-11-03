class DiscussionsController < ApplicationController
  # GET /discussions
  # GET /discussions.json
  def index
    @discussions = Discussion.find(:all, :include => :author, :order => 'created_at DESC')

    set_meta_tags :title => 'Debates', 
    :description => 'Faremos um debate sobre um determinado assunto e contamos com sua opinião', 
    :keywords => 'fonoaudiologia, fonoaudiologia exercicios , curso fonoaudiologia, fonoaudiologista, debates fonoaudiologia '

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @discussions }
    end
  end

  # GET /discussions/1
  # GET /discussions/1.json
  def show
    @discussion = Discussion.find(params[:id])

    set_meta_tags :title => @discussion.titulo, 
    :description => 'Faremos um debate sobre um determinado assunto e contamos com sua opinião', 
    :keywords => 'fonoaudiologia, fonoaudiologia exercicios , curso fonoaudiologia, fonoaudiologista, debates fonoaudiologia '

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @discussion }
    end
  end
end
