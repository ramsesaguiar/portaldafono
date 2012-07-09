class DuvidasController < ApplicationController
  # GET /duvidas
  # GET /duvidas.json
  def index
    @duvidas = Duvida.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @duvidas }
    end
  end

  # GET /duvidas/1
  # GET /duvidas/1.json
  def show
    @duvida = Duvida.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @duvida }
    end
  end

  # GET /duvidas/new
  # GET /duvidas/new.json
  def new
    @duvida = Duvida.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @duvida }
    end
  end

  # GET /duvidas/1/edit
  def edit
    @duvida = Duvida.find(params[:id])
  end

  # POST /duvidas
  # POST /duvidas.json
  def create
    @duvida = Duvida.new(params[:duvida])

    respond_to do |format|
      if @duvida.save
        format.html { redirect_to @duvida, notice: 'Duvida was successfully created.' }
        format.json { render json: @duvida, status: :created, location: @duvida }
      else
        format.html { render action: "new" }
        format.json { render json: @duvida.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /duvidas/1
  # PUT /duvidas/1.json
  def update
    @duvida = Duvida.find(params[:id])

    respond_to do |format|
      if @duvida.update_attributes(params[:duvida])
        format.html { redirect_to @duvida, notice: 'Duvida was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @duvida.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /duvidas/1
  # DELETE /duvidas/1.json
  def destroy
    @duvida = Duvida.find(params[:id])
    @duvida.destroy

    respond_to do |format|
      format.html { redirect_to duvidas_url }
      format.json { head :no_content }
    end
  end
end
