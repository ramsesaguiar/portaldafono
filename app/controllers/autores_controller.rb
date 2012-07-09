class AutoresController < ApplicationController
  # GET /autores
  # GET /autores.json
  def index
    @autores = Autor.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @autores }
    end
  end

  # GET /autores/1
  # GET /autores/1.json
  def show
    @autor = Autor.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @autor }
    end
  end

  # GET /autores/new
  # GET /autores/new.json
  def new
    @autor = Autor.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @autor }
    end
  end

  # GET /autores/1/edit
  def edit
    @autor = Autor.find(params[:id])
  end

  # POST /autores
  # POST /autores.json
  def create
    @autor = Autor.new(params[:autor])

    respond_to do |format|
      if @autor.save
        format.html { redirect_to @autor, notice: 'Autor was successfully created.' }
        format.json { render json: @autor, status: :created, location: @autor }
      else
        format.html { render action: "new" }
        format.json { render json: @autor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /autores/1
  # PUT /autores/1.json
  def update
    @autor = Autor.find(params[:id])

    respond_to do |format|
      if @autor.update_attributes(params[:autor])
        format.html { redirect_to @autor, notice: 'Autor was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @autor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /autores/1
  # DELETE /autores/1.json
  def destroy
    @autor = Autor.find(params[:id])
    @autor.destroy

    respond_to do |format|
      format.html { redirect_to autores_url }
      format.json { head :no_content }
    end
  end
end
