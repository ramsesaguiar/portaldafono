class SuperHighlightsController < ApplicationController
  # GET /super_highlights
  # GET /super_highlights.json
  def index
    @super_highlights = SuperHighlight.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @super_highlights }
    end
  end

  # GET /super_highlights/1
  # GET /super_highlights/1.json
  def show
    @super_highlight = SuperHighlight.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @super_highlight }
    end
  end

  # GET /super_highlights/new
  # GET /super_highlights/new.json
  def new
    @super_highlight = SuperHighlight.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @super_highlight }
    end
  end

  # GET /super_highlights/1/edit
  def edit
    @super_highlight = SuperHighlight.find(params[:id])
  end

  # POST /super_highlights
  # POST /super_highlights.json
  def create
    @super_highlight = SuperHighlight.new(params[:super_highlight])

    respond_to do |format|
      if @super_highlight.save
        format.html { redirect_to @super_highlight, notice: 'Super highlight was successfully created.' }
        format.json { render json: @super_highlight, status: :created, location: @super_highlight }
      else
        format.html { render action: "new" }
        format.json { render json: @super_highlight.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /super_highlights/1
  # PUT /super_highlights/1.json
  def update
    @super_highlight = SuperHighlight.find(params[:id])

    respond_to do |format|
      if @super_highlight.update_attributes(params[:super_highlight])
        format.html { redirect_to @super_highlight, notice: 'Super highlight was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @super_highlight.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /super_highlights/1
  # DELETE /super_highlights/1.json
  def destroy
    @super_highlight = SuperHighlight.find(params[:id])
    @super_highlight.destroy

    respond_to do |format|
      format.html { redirect_to super_highlights_url }
      format.json { head :no_content }
    end
  end
end
