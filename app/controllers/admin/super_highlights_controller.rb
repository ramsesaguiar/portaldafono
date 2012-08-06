class Admin::SuperHighlightsController < Admin::ApplicationController
  # GET /admin/super_highlights
  # GET /admin/super_highlights.json
  def index
    @admin_super_highlights = SuperHighlight.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @admin_super_highlights }
    end
  end

  # GET /admin/super_highlights/1
  # GET /admin/super_highlights/1.json
  def show
    @admin_super_highlight = SuperHighlight.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @admin_super_highlight }
    end
  end

  # GET /admin/super_highlights/new
  # GET /admin/super_highlights/new.json
  def new
    @admin_super_highlight = SuperHighlight.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @admin_super_highlight }
    end
  end

  # GET /admin/super_highlights/1/edit
  def edit
    @admin_super_highlight = SuperHighlight.find(params[:id])
  end

  # POST /admin/super_highlights
  # POST /admin/super_highlights.json
  def create
    @admin_super_highlight = SuperHighlight.new(params[:super_highlight])

    respond_to do |format|
      if @admin_super_highlight.save
        format.html { redirect_to [:admin,@admin_super_highlight], notice: 'Superdestaque criado com sucesso.' }
        format.json { render json: @admin_super_highlight, status: :created, location: @admin_super_highlight }
      else
        format.html { render action: "new" }
        format.json { render json: @admin_super_highlight.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /admin/super_highlights/1
  # PUT /admin/super_highlights/1.json
  def update
    @admin_super_highlight = SuperHighlight.find(params[:id])

    respond_to do |format|
      if @admin_super_highlight.update_attributes(params[:super_highlight])
        format.html { redirect_to [:admin,@admin_super_highlight], notice: 'Superdestaque atualizado com sucesso.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @admin_super_highlight.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/super_highlights/1
  # DELETE /admin/super_highlights/1.json
  def destroy
    @admin_super_highlight = SuperHighlight.find(params[:id])
    @admin_super_highlight.destroy

    respond_to do |format|
      format.html { redirect_to admin_super_highlights_url }
      format.json { head :no_content }
    end
  end
end
