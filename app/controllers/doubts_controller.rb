class DoubtsController < ApplicationController
  # GET /doubts
  # GET /doubts.json
  def index
    @doubts = Doubt.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @doubts }
    end
  end

  # GET /doubts/1
  # GET /doubts/1.json
  def show
    @doubt = Doubt.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @doubt }
    end
  end

  # GET /doubts/new
  # GET /doubts/new.json
  def new
    @doubt = Doubt.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @doubt }
    end
  end

  # POST /doubts
  # POST /doubts.json
  def create
    @doubt = Doubt.new
    @doubt.usuario_id = session[:current_user_id]
    @doubt.titulo = params[:doubt][:titulo]
    @doubt.texto = params[:doubt][:texto]
    @doubt.status = "S"
    respond_to do |format|
      if @doubt.save
        format.html { redirect_to @doubt, notice: 'Dúvida criada com sucesso.' }
        format.json { render json: @doubt, status: :created, location: @doubt }
      else
        format.html { render action: "new" }
        format.json { render json: @doubt.errors, status: :unprocessable_entity }
      end
    end 
  end

 end
