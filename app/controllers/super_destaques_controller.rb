class SuperDestaquesController < ApplicationController
  # GET /super_destaques
  # GET /super_destaques.json
  def index
    @super_destaques = SuperDestaque.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @super_destaques }
    end
  end

  # GET /super_destaques/1
  # GET /super_destaques/1.json
  def show
    @super_destaque = SuperDestaque.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @super_destaque }
    end
  end

  # GET /super_destaques/new
  # GET /super_destaques/new.json
  def new
    @super_destaque = SuperDestaque.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @super_destaque }
    end
  end

  # GET /super_destaques/1/edit
  def edit
    @super_destaque = SuperDestaque.find(params[:id])
  end

  # POST /super_destaques
  # POST /super_destaques.json
  def create
    @super_destaque = SuperDestaque.new(params[:super_destaque])

    respond_to do |format|
      if @super_destaque.save
        format.html { redirect_to @super_destaque, notice: 'Super destaque was successfully created.' }
        format.json { render json: @super_destaque, status: :created, location: @super_destaque }
      else
        format.html { render action: "new" }
        format.json { render json: @super_destaque.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /super_destaques/1
  # PUT /super_destaques/1.json
  def update
    @super_destaque = SuperDestaque.find(params[:id])

    respond_to do |format|
      if @super_destaque.update_attributes(params[:super_destaque])
        format.html { redirect_to @super_destaque, notice: 'Super destaque was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @super_destaque.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /super_destaques/1
  # DELETE /super_destaques/1.json
  def destroy
    @super_destaque = SuperDestaque.find(params[:id])
    @super_destaque.destroy

    respond_to do |format|
      format.html { redirect_to super_destaques_url }
      format.json { head :no_content }
    end
  end
end
