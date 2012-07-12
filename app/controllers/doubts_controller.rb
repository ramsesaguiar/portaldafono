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

  # GET /doubts/1/edit
  def edit
    @doubt = Doubt.find(params[:id])
  end

  # POST /doubts
  # POST /doubts.json
  def create
    @doubt = Doubt.new(params[:doubt])

    respond_to do |format|
      if @doubt.save
        format.html { redirect_to @doubt, notice: 'Doubt was successfully created.' }
        format.json { render json: @doubt, status: :created, location: @doubt }
      else
        format.html { render action: "new" }
        format.json { render json: @doubt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /doubts/1
  # PUT /doubts/1.json
  def update
    @doubt = Doubt.find(params[:id])

    respond_to do |format|
      if @doubt.update_attributes(params[:doubt])
        format.html { redirect_to @doubt, notice: 'Doubt was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @doubt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /doubts/1
  # DELETE /doubts/1.json
  def destroy
    @doubt = Doubt.find(params[:id])
    @doubt.destroy

    respond_to do |format|
      format.html { redirect_to doubts_url }
      format.json { head :no_content }
    end
  end
end
